.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$QWy-27z4N9eSKLQk7iOWRu3Ei38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$QWy-27z4N9eSKLQk7iOWRu3Ei38;->f$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$QWy-27z4N9eSKLQk7iOWRu3Ei38;->f$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    return-void
.end method
