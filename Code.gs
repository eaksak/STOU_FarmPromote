/**
 * Google Apps Script - Agricultural Extension & Development Administration Exam Tutoring System
 * ชุดวิชา 91351 หลักการบริหารการส่งเสริมและพัฒนาการเกษตร 15 หน่วยการเรียนรู้
 */

// Global configuration
var APP_TITLE = "ระบบติวสอบหลักการบริหารการส่งเสริมและพัฒนาการเกษตร (มสธ. 91351)";

/**
 * Serves the Web App HTML
 */
function doGet(e) {
  var template = HtmlService.createTemplateFromFile('index');
  var output = template.evaluate();
  
  output.setTitle(APP_TITLE)
        .addMetaTag('viewport', 'width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no')
        .setXFrameOptionsMode(HtmlService.XFrameOptionsMode.ALLOWALL);
        
  return output;
}

/**
 * Returns curriculum metadata and all 15 units data
 */
function getCurriculumData() {
  return getEmbeddedCurriculum();
}

/**
 * Returns specific unit details
 */
function getUnitDetails(unitId) {
  var data = getEmbeddedCurriculum();
  for (var i = 0; i < data.length; i++) {
    if (data[i].id == unitId) {
      return data[i];
    }
  }
  return null;
}

/**
 * Returns all 750 questions for quiz engine
 */
function getAllQuestions() {
  var data = getEmbeddedCurriculum();
  var allQuestions = [];
  for (var i = 0; i < data.length; i++) {
    if (data[i].questions && data[i].questions.length > 0) {
      allQuestions = allQuestions.concat(data[i].questions);
    }
  }
  return allQuestions;
}

/**
 * Helper to get embedded curriculum data from Data.gs
 */
function getEmbeddedCurriculum() {
  if (typeof CURRICULUM_DATA !== 'undefined') {
    return CURRICULUM_DATA;
  }
  return [];
}
