module Pages.Forms.Group.Update exposing (update)

import FilteringTable.Util as FT
import Pages.Forms.Group.Messages exposing (GroupFormMsg(..))
import Pages.Forms.Group.Model exposing (GroupFormModel)


update : GroupFormMsg -> GroupFormModel -> GroupFormModel
update msg model =
    case msg of
        UpdateMemberFilter text ->
            { model | membersFilterRegex = FT.textToRegex text }

        UpdateNonMemberFilter text ->
            { model | nonmembersFilterRegex = FT.textToRegex text }

        UpdateGroupDescField text ->
            { model | description = Just text }

        UpdateGroupNameField text ->
            { model | name = Just text }
