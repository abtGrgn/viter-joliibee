<?php
// check database connection
$conn = null;
$conn = checkDbConnection();
// make instance of classes
$category = new Category($conn);
// get $_GET data
$error = [];
$returnData = [];
if (array_key_exists("categoryid", $_GET)) {
  // check data
  checkPayload($data);
  // get data
  $category->category_aid = $_GET['categoryid'];
  $category->category_image = checkIndex($data, "category_image");
  $category->category_title = checkIndex($data, "category_title");
  $category->category_created = date("Y-m-d H:i:s");
  $category->category_datetime = date("Y-m-d H:i:s");
  checkId($category->category_aid);

// //checks current data to avoid same entries from being updated
// $role_name_old = checkIndex($data, 'role_name_old');
// compareName($role, $role_name_old, $role->role_name);
// checkId($role->role_aid);

  // update
  $query = checkUpdate($category);
  returnSuccess($category, "category", $query);
}

// return 404 error if endpoint not available
checkEndpoint();