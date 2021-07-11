.class public abstract Lcom/oneplus/aod/controller/OpClockControllerImpl;
.super Ljava/lang/Object;
.source "OpClockControllerImpl.java"

# interfaces
.implements Lcom/oneplus/aod/controller/IOpClockController;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field protected static final FONT_DATE_SIZE:I

.field protected static final FONT_STYLE_BATTERY:I

.field protected static final FONT_STYLE_NOTIFICATION:I

.field protected static final FONT_STYLE_OWNERINFO:I


# instance fields
.field protected mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

.field protected mContext:Landroid/content/Context;

.field protected mTime:Ljava/util/Calendar;

.field protected mTimeZone:Ljava/util/TimeZone;

.field protected mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget v0, Lcom/android/systemui/R$dimen;->aod_date_view_font_size:I

    sput v0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_DATE_SIZE:I

    .line 40
    sget v0, Lcom/android/systemui/R$style;->battery_percentage:I

    sput v0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_STYLE_BATTERY:I

    .line 41
    sget v0, Lcom/android/systemui/R$style;->notification_icon_more:I

    sput v0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_STYLE_NOTIFICATION:I

    .line 42
    sget v0, Lcom/android/systemui/R$style;->aod_owner_info:I

    sput v0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_STYLE_OWNERINFO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 57
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mTimeZone:Ljava/util/TimeZone;

    .line 58
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mTime:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public applyBatteryInfoTextSettings(Lcom/oneplus/aod/OpAodBatteryStatusView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getBatteryInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    sget v1, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_STYLE_BATTERY:I

    .line 219
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTypeface(Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getTextSize(Landroid/content/Context;)I

    move-result p0

    .line 218
    invoke-virtual {p1, v1, v2, p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->setTextSettings(ILandroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public applyBatteryInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getBatteryInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->applySystemInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    return-void
.end method

.method public applyDateInfoTextSettings(Lcom/oneplus/aod/views/OpTextDate;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getDateInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "sans-serif-medium"

    .line 201
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTypeface(Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getTextSizeId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 203
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getTextSize(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_DATE_SIZE:I

    invoke-static {p0, v2}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result p0

    .line 205
    :goto_0
    invoke-virtual {p1, v1, p0}, Lcom/oneplus/aod/views/OpTextDate;->setTextSettings(Landroid/graphics/Typeface;I)V

    .line 207
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->getLocale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/aod/views/OpTextDate;->setLocale(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->getDateFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/aod/views/OpTextDate;->setFormatString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public applyDateInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getDateInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->applySystemInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    return-void
.end method

.method public applyNotificationInfoTextSettings(Lcom/oneplus/aod/OpAodNotificationIconAreaController;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getNotificationInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sget v1, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_STYLE_NOTIFICATION:I

    .line 231
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTypeface(Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getTextSize(Landroid/content/Context;)I

    move-result p0

    .line 230
    invoke-virtual {p1, v1, v2, p0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->setTextSettings(ILandroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public applyNotificationInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getNotificationInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->applySystemInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    return-void
.end method

.method public applyOwnerInfoTextSettings(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getOwnerInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    sget v1, Lcom/oneplus/aod/controller/OpClockControllerImpl;->FONT_STYLE_OWNERINFO:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTypeface(Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getTextSize(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_1

    int-to-float p0, p0

    .line 251
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method public applyOwnerInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getOwnerInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->applySystemInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    return-void
.end method

.method public applySliceInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getSliceInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->applySystemInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    return-void
.end method

.method protected applySystemInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 3

    .line 271
    invoke-virtual {p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginLeftId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginRightId()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {p2, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {p2, v2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v2

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {p2, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginBottom(Landroid/content/Context;)I

    move-result p0

    .line 279
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, -0x80000000

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 273
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginLeft(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {p2, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p2, v2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginRight(Landroid/content/Context;)I

    move-result v2

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {p2, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginBottom(Landroid/content/Context;)I

    move-result p0

    .line 274
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 284
    :goto_1
    invoke-virtual {p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getGravity()I

    move-result p0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public applySystemInfoViewMargin(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getSystemInfo()Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->applyRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 154
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginLeftId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginRightId()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v0, v2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v0, v3}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginBottom(Landroid/content/Context;)I

    move-result p0

    .line 162
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v1, -0x80000000

    .line 155
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 156
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 157
    iget-object v1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginLeft(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v0, v2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v0, v3}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginRight(Landroid/content/Context;)I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginBottom(Landroid/content/Context;)I

    move-result p0

    .line 157
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    return-void
.end method

.method public getBound()Landroid/graphics/Rect;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->getBound()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBurnInHandleClassName()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->getBurnInHandleClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClockView()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/OpAodSettings;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    .line 76
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getMovingDistance()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/OpAodSettings;->getMovingDistance(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTypeface(Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->getTypeface(Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method protected getTypeface(Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 3

    .line 297
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getFontFamily()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->isFollowSystemFont()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 299
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getFontFamily()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 300
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getTextFontWeight()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 302
    invoke-static {p0, p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->getFontFamily()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 306
    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    .line 309
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getMclTypeface(I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 101
    iput-object v1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mView:Landroid/view/View;

    .line 103
    :cond_0
    iput-object v1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    return-void
.end method

.method public onTimeTick()V
    .locals 2

    .line 259
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 1

    .line 264
    iput-object p1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mTimeZone:Ljava/util/TimeZone;

    .line 265
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 266
    invoke-virtual {p0}, Lcom/oneplus/aod/controller/OpClockControllerImpl;->onTimeTick()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public shouldShowBattery()Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->shouldShowBattery()Z

    move-result p0

    return p0
.end method

.method public shouldShowDate()Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->shouldShowDate()Z

    move-result p0

    return p0
.end method

.method public shouldShowNotification()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->shouldShowNotification()Z

    move-result p0

    return p0
.end method

.method public shouldShowOwnerInfo()Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->shouldShowOwnerInfo()Z

    move-result p0

    return p0
.end method

.method public shouldShowSliceInfo()Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodSettings;->shouldShowSliceInfo()Z

    move-result p0

    return p0
.end method

.method public updateSettings(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/aod/utils/OpAodSettings;->parse(Landroid/content/Context;I)Lcom/oneplus/aod/utils/OpAodSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/controller/OpClockControllerImpl;->mAodClockSettings:Lcom/oneplus/aod/utils/OpAodSettings;

    return-void
.end method
