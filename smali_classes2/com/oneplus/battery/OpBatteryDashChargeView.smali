.class public Lcom/oneplus/battery/OpBatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "OpBatteryDashChargeView.java"


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/battery/OpBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    return-void
.end method

.method private getImageResId(I)I
    .locals 0

    invoke-static {p1}, Lcom/oneplus/util/OpBatteryUtils;->getDashImageResId(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public setIconTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpBatteryDashChargeView;->getImageResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updateViews()V
    .locals 1

    iget v0, p0, Lcom/oneplus/battery/OpBatteryDashChargeView;->mLevel:I

    invoke-direct {p0, v0}, Lcom/oneplus/battery/OpBatteryDashChargeView;->getImageResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
