.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Landroid/widget/TextView;
.source "KeyguardIndicationTextView.java"


# instance fields
.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public switchIndication(I)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;)V
    .locals 1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x4

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
