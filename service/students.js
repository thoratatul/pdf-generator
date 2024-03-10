const { students } = require("./../models");
const PDFDocument = require("pdfkit");
const logName = "studentsService";

const getStudentDetails = async (reqId) => {
  try {
    printLog("info", reqId, logName, "getStudentDetails", {});
    const studentDetails = await students.findAll({ raw: true });
    return studentDetails;
  } catch (error) {
    printLog("error", reqId, logName, "getStudentDetails", {
      message: error.message || error.stack,
    });
    return false;
  }
};

const generatePdfSync = (reqId, studentDetails) => {
  return new Promise((resolve, reject) => {
    try {
      printLog("info", reqId, logName, "generatePdfSync", {});
      const doc = new PDFDocument();
      const outputFilepath = `${__dirname}/../downloads/student_cards.pdf`;

      const outputStream = fs.createWriteStream(outputFilepath);
      doc.pipe(outputStream);

      studentDetails.forEach((student, index) => {
        if (index > 0) {
          doc.addPage();
        }
        const cardWidth = 400;
        const cardHeight = 200;
        const cardX = (doc.page.width - cardWidth) / 2;
        const cardY = (doc.page.height - cardHeight) / 2;
        const cornerRadius = 10; // Add rounded border with a soft color
        doc
          .roundedRect(cardX, cardY, cardWidth, cardHeight, cornerRadius)
          .fillAndStroke("#f0f0f0", "#000000");

        doc
          .font("Helvetica-Bold")
          .fontSize(14)
          .fillColor("#333333")
          .text(
            `${student.first_name} ${student.middle_name} ${student.last_name}`,
            cardX + 30,
            cardY + 30
          );
        doc
          .fontSize(12)
          .text(`College ID: ${student.college_id}`, cardX + 30, cardY + 60);
        doc
          .fontSize(12)
          .text(`Gender: ${student.gender}`, cardX + 30, cardY + 80);
        doc
          .fontSize(12)
          .text(`Date of Birth: ${student.dob}`, cardX + 30, cardY + 100);
        doc
          .fontSize(12)
          .text(
            `Emergency Contact: ${student.emergency_contact}`,
            cardX + 30,
            cardY + 120
          );
        doc
          .image(student.profile_picture, cardX + cardWidth - 130, cardY + 30, {
            width: 100,
            height: 100,
          })
          .opacity(0.9);
        doc
          .image(student.signature, cardX + cardWidth - 130, cardY + 140, {
            width: 100,
            height: 50,
          })
          .opacity(0.9);

        if (index < studentDetails.length - 1) {
          doc.moveDown(2);
        }
      });

      doc.end();

      // Event handler for when the PDF is finished
      outputStream.on("finish", () => {
        const message = "Pdf Generated Successfully";
        printLog("info", reqId, logName, "generatePdfSync", { message });
        resolve({
          statusCode: 200,
          success: true,
          message,
          data: { outputFilepath },
        });
      });

      outputStream.on("error", (error) => {
        const message = error.message || "Pdf Generation Failed";
        printLog("info", reqId, logName, "generatePdfSync", { message });
        reject({ statusCode: 400, success: false, message });
      });
    } catch (error) {
      const message = error.message;
      printLog("error", reqId, logName, "generatePdfSync", {
        message,
      });
      reject({ statusCode: 400, success: false, message });
    }
  });
};

const generatePdfAsync = async (reqId, studentDetails) => {
  return new Promise(async (resolve, reject) => {
    try {
      printLog("info", reqId, logName, "generatePdfAsync", {});
      const doc = new PDFDocument();
      const outputFilepath = `${__dirname}/../downloads/student_cards.pdf`;

      const outputStream = fs.createWriteStream(outputFilepath);
      doc.pipe(outputStream);

      await Promise.all(
        studentDetails.map((student, index) => {
          if (index > 0) {
            doc.addPage();
          }
          const cardWidth = 400;
          const cardHeight = 200;
          const cardX = (doc.page.width - cardWidth) / 2;
          const cardY = (doc.page.height - cardHeight) / 2;
          const cornerRadius = 10; // Add rounded border with a soft color
          doc
            .roundedRect(cardX, cardY, cardWidth, cardHeight, cornerRadius)
            .fillAndStroke("#f0f0f0", "#000000");

          doc
            .font("Helvetica-Bold")
            .fontSize(14)
            .fillColor("#333333")
            .text(
              `${student.first_name} ${student.middle_name} ${student.last_name}`,
              cardX + 30,
              cardY + 30
            );
          doc
            .fontSize(12)
            .text(`College ID: ${student.college_id}`, cardX + 30, cardY + 60);
          doc
            .fontSize(12)
            .text(`Gender: ${student.gender}`, cardX + 30, cardY + 80);
          doc
            .fontSize(12)
            .text(`Date of Birth: ${student.dob}`, cardX + 30, cardY + 100);
          doc
            .fontSize(12)
            .text(
              `Emergency Contact: ${student.emergency_contact}`,
              cardX + 30,
              cardY + 120
            );
          doc
            .image(
              student.profile_picture,
              cardX + cardWidth - 130,
              cardY + 30,
              {
                width: 100,
                height: 100,
              }
            )
            .opacity(0.9);
          doc
            .image(student.signature, cardX + cardWidth - 130, cardY + 140, {
              width: 100,
              height: 50,
            })
            .opacity(0.9);

          if (index < studentDetails.length - 1) {
            doc.moveDown(2);
          }
        })
      );

      doc.end();

      // Event handler for when the PDF is finished
      outputStream.on("finish", () => {
        const message = "Pdf Generated Successfully";
        printLog("info", reqId, logName, "generatePdfAsync", { message });
        resolve({
          statusCode: 200,
          success: true,
          message,
          data: { outputFilepath },
        });
      });

      outputStream.on("error", (error) => {
        const message = error.message || "Pdf Generation Failed";
        printLog("info", reqId, logName, "generatePdfAsync", { message });
        reject({ statusCode: 400, success: false, message });
      });
    } catch (error) {
      const message = error.message;
      printLog("error", reqId, logName, "generatePdfAsync", {
        message,
      });
      reject({ statusCode: 400, success: false, message });
    }
  });
};

const generateIds = async (reqId, type = "sync") => {
  try {
    printLog("info", reqId, logName, "generateIds", {});
    const studentDetails = await getStudentDetails(reqId);
    const pdfDetails =
      type == "sync"
        ? await generatePdfSync(reqId, studentDetails)
        : await generatePdfAsync(reqId, studentDetails);
    return pdfDetails;
  } catch (error) {
    const message = error.message;
    printLog("error", reqId, logName, "generateIds", {
      message,
    });
    return { statusCode: 400, success: false, message };
  }
};

module.exports = { generateIds };
