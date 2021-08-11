.class public Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;
.super Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;
.source "OpAodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/OpAodSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpSystemViewInfo"
.end annotation


# instance fields
.field private mAlignParentBottom:Z

.field private mBelowViewId:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mAlignParentBottom:Z

    sget v0, Lcom/android/systemui/R$id;->op_aod_clock_container:I

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mBelowViewId:I

    return-void
.end method


# virtual methods
.method public applyRules(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mBelowViewId:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mAlignParentBottom:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->parseRules(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method protected parseRules(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mAlignParentBottom:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mAlignParentBottom:Z

    iput v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mBelowViewId:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mBelowViewId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpSystemViewInfo;->mBelowViewId:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
