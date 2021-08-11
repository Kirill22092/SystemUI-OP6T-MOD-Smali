.class public final Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PriorityOnboardingDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $baseSize:I

.field final synthetic $bg:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic $bgSize:I

.field final synthetic $conversationIconBadgeBg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$bg:Landroid/graphics/drawable/GradientDrawable;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$baseSize:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$conversationIconBadgeBg:Landroid/widget/ImageView;

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$bgSize:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$bg:Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$bgSize:I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$conversationIconBadgeBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$bg:Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$baseSize:I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$initDialog$1$3;->$conversationIconBadgeBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
