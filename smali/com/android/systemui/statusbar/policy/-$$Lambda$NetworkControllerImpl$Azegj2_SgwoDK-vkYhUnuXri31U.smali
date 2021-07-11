.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$Azegj2_SgwoDK-vkYhUnuXri31U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$Azegj2_SgwoDK-vkYhUnuXri31U;->f$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$Azegj2_SgwoDK-vkYhUnuXri31U;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$Azegj2_SgwoDK-vkYhUnuXri31U;->f$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$Azegj2_SgwoDK-vkYhUnuXri31U;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->lambda$setUserSetupComplete$2$NetworkControllerImpl(Z)V

    return-void
.end method
