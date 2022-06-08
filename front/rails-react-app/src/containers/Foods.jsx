import React, { Fragment, useEffect } from 'react';
import { fetchFoods } from '../apis/food';


export const Foods = ({
  match
}) => {
  useEffect(() => {
    fetchFoods(match.params.restaurantsId)
      .then((data) =>
        console.log(data)
      )
  }, [])

  return (
    <Fragment>
      フード一覧
    </Fragment>
  )
}
