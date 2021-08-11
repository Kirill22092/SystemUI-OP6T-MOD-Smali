.class public Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;
.super Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
.source "HybridConversationNotificationView.java"


# instance fields
.field private mConversationFacePile:Landroid/view/View;

.field private mConversationIconSize:I

.field private mConversationIconView:Landroid/widget/ImageView;

.field private mConversationSenderName:Landroid/widget/TextView;

.field private mFacePileProtectionWidth:I

.field private mFacePileSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private static setSize(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 7

    instance-of v0, p3, Lcom/android/internal/widget/ConversationLayout;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void

    :cond_0
    check-cast p3, Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x102025a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    const v3, 0x102025c

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    const v4, 0x102025b

    invoke-virtual {v3, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    const v5, 0x102025d

    invoke-virtual {v4, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p3, v0, v3, v4}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileSize:I

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconSize:I

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconSize:I

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconSize:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileProtectionWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->isOneToOne()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationSenderName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->onFinishInflate()V

    const v0, 0x102025f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    const v0, 0x102025a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->conversation_notification_sender:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->conversation_single_line_face_pile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileSize:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->conversation_single_line_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconSize:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->conversation_single_line_face_pile_protection_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileProtectionWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(Landroid/view/View;)V

    return-void
.end method
