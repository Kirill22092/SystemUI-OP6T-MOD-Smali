.class Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AssistDisclosure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;-><init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$1:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->this$1:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->this$1:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistDisclosure;->access$100(Lcom/android/systemui/assist/AssistDisclosure;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;->mCancelled:Z

    return-void
.end method
