class BidStatusPresenter::Over::Vendor::Winner::PendingPayment < BidStatusPresenter::Base
  def header
    I18n.t('statuses.bid_status_presenter.over.winner.pending_payment.header')
  end

  def body
    I18n.t(
      'statuses.bid_status_presenter.over.winner.pending_payment.body',
      amount: winning_amount,
      delivery_url: auction.delivery_url,
      payment_url: user.payment_url
    )
  end
end
