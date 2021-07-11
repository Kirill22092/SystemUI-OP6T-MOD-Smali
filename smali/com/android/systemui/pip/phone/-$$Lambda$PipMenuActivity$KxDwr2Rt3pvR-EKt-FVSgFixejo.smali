.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$KxDwr2Rt3pvR-EKt-FVSgFixejo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/RemoteAction;


# direct methods
.method public synthetic constructor <init>(Landroid/app/RemoteAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$KxDwr2Rt3pvR-EKt-FVSgFixejo;->f$0:Landroid/app/RemoteAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$KxDwr2Rt3pvR-EKt-FVSgFixejo;->f$0:Landroid/app/RemoteAction;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$updateActionViews$5(Landroid/app/RemoteAction;)V

    return-void
.end method
