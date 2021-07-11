.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$11;
.super Ljava/lang/Object;
.source "OpStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->startWakingUpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$aodDisppearAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1459
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$11;->val$aodDisppearAnimation:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1462
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$11;->val$aodDisppearAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
