.class public Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;
.super Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;
.source "OpAodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/OpAodSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpDateViewInfo"
.end annotation


# instance fields
.field mDateFormat:Ljava/lang/String;

.field mLocale:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->mDateFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->mLocale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->mDateFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->mLocale:Ljava/lang/String;

    return-object p0
.end method

.method parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->parseDateView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected parseDateView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/R$styleable;->OpDateView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$styleable;->OpDateView_dateFormat:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->mDateFormat:Ljava/lang/String;

    sget p2, Lcom/android/systemui/R$styleable;->OpDateView_locale:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpDateViewInfo;->mLocale:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
