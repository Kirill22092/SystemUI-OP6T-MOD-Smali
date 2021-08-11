.class public final synthetic Lcom/android/systemui/util/concurrency/-$$Lambda$ExecutorImpl$vXdc7rv1NdEmVmxIWaGxknUGa10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/concurrency/ExecutorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/concurrency/ExecutorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/concurrency/-$$Lambda$ExecutorImpl$vXdc7rv1NdEmVmxIWaGxknUGa10;->f$0:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/-$$Lambda$ExecutorImpl$vXdc7rv1NdEmVmxIWaGxknUGa10;->f$0:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->lambda$vXdc7rv1NdEmVmxIWaGxknUGa10(Lcom/android/systemui/util/concurrency/ExecutorImpl;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
