import React from "react";

function RenderHomePage(){
    return(<div>
         Gifts
      <form>
      <fieldset>
         <label>
           <p>Name</p>
           <input name="name" />
         </label>
         <label>
           <p>Details</p>
           <input name="Details" />
         </label>
         <label>
           <p>Photo</p>
           <input name="photo" />
         </label>
         <label>
           <p>Link</p>
           <input name="link" />
         </label>
       </fieldset>
       <button type="submit">Submit</button>
      </form>
    </div>
    )

}
export default RenderHomePage