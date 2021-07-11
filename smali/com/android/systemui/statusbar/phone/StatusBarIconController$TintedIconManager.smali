.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintedIconManager"
.end annotation


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CommandQueue;Ljava/lang/String;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CommandQueue;Ljava/lang/String;)V

    return-void
.end method

.method private updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .locals 1

    .line 322
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    .line 323
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(I)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    .line 288
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 292
    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    goto :goto_0

    .line 294
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 297
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 331
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    goto :goto_0

    .line 335
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    :goto_0
    return-void
.end method

.method public setTint(I)V
    .locals 2

    .line 301
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    const/4 p1, 0x0

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    instance-of v1, v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v1, :cond_1

    .line 305
    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    goto :goto_1

    .line 311
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 315
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
