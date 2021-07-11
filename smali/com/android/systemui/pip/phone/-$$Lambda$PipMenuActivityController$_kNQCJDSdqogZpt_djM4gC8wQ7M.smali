.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_kNQCJDSdqogZpt_djM4gC8wQ7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Landroid/os/Messenger;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_kNQCJDSdqogZpt_djM4gC8wQ7M;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_kNQCJDSdqogZpt_djM4gC8wQ7M;->f$1:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_kNQCJDSdqogZpt_djM4gC8wQ7M;->f$0:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_kNQCJDSdqogZpt_djM4gC8wQ7M;->f$1:Landroid/os/Messenger;

    invoke-static {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->lambda$getMenuStateChangeFinishedCallback$1(Landroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method
