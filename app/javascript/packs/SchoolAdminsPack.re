type props = {
  currentSchoolAdminId: string,
  admins: array(SchoolAdmin.t),
};

let decodeProps = json =>
  Json.Decode.{
    currentSchoolAdminId: json |> field("currentSchoolAdminId", string),
    admins: json |> field("admins", array(SchoolAdmin.decode)),
  };

let props =
  DomUtils.parseJSONTag(~id="school-admins-data", ()) |> decodeProps;

ReactDOMRe.renderToElementWithId(
  <SchoolAdmins__Editor
    currentSchoolAdminId={props.currentSchoolAdminId}
    admins={props.admins}
  />,
  "school-admins",
);
