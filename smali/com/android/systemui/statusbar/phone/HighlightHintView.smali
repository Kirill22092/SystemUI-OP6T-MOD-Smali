.class public Lcom/android/systemui/statusbar/phone/HighlightHintView;
.super Landroid/widget/FrameLayout;
.source "HighlightHintView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static TAG_KEYGUARD_STATUSBAR:I = 0x3e9

.field public static TAG_STATUSBAR:I = 0x3e8


# instance fields
.field mChronometerContainer:Landroid/widget/FrameLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 205
    iput p2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    .line 55
    sget p2, Lcom/android/systemui/R$layout;->highlight_hint_view_notch:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getMaxHighlightHintTextWidth()I
    .locals 6

    .line 207
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 215
    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 216
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 217
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    iget v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    if-eq v5, v4, :cond_4

    .line 219
    :cond_3
    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->measure(II)V

    .line 220
    iput v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    .line 222
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v0

    .line 223
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 224
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->highlighthint_chronometer_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 225
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-double v0, p0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v4

    double-to-int p0, v0

    if-lez v3, :cond_6

    move p0, v3

    :cond_6
    return p0
.end method

.method private updateHint()V
    .locals 10

    .line 101
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 102
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 112
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 113
    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    .line 114
    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 115
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 122
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 123
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    int-to-float v9, v4

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v8

    if-eq v8, v5, :cond_4

    .line 125
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getMaxHighlightHintTextWidth()I

    move-result v3

    if-lez v3, :cond_3

    .line 133
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a

    .line 142
    invoke-virtual {v1}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->highlight_hint_view_chronometer_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v5, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v3, v5, :cond_6

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    .line 148
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 149
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    int-to-float v3, v4

    .line 151
    invoke-virtual {v0, v7, v3}, Landroid/widget/Chronometer;->setTextSize(IF)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 153
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 156
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 158
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 166
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_4
    return-void
.end method

.method private updateLayout()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_width_notch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_bg_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->highlight_hint_bg_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    move v1, v2

    .line 93
    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 94
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->highlight_hint_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v3

    .line 95
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 192
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 193
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 194
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 199
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 200
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 201
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 62
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_notification_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_notification_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    .line 65
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-eq v0, v1, :cond_0

    return-void

    .line 239
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 244
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    sub-int/2addr p2, p3

    .line 76
    iget p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le p3, p2, :cond_0

    .line 77
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
