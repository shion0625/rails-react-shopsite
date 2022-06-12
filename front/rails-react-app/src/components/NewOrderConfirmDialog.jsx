import React from 'react';

import Dialog from '@mui/material/Dialog';
import DialogTitle from '@mui/material/DialogTitle';
import DialogContent from '@mui/material/DialogContent';
import { OrderButton } from './Buttons/OrderButton';

export const NewOrderConfirmDialog = ({
  isOpen,
  onClose,
  existingRestaurantName,
  newRestaurantName,
  onClickSubmit,
}) => (
  <Dialog
    open={isOpen}
    onClose={onClose}
    maxWidth="xs"
  >
    <DialogTitle>
      新規注文しますか？
    </DialogTitle>
    <DialogContent>
      <p>
        {
          `ご注文に ${existingRestaurantName} の商品が含まれています。
          新規の注文を開始して ${newRestaurantName} の商品を追加してください。`
        }
      </p>
      <OrderButton onClick={onClickSubmit}>
        新規注文
      </OrderButton>
    </DialogContent>
  </Dialog>
)
