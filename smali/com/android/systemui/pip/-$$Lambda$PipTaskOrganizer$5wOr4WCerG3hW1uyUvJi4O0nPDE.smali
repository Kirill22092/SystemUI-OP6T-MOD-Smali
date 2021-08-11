.class public final synthetic Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$5wOr4WCerG3hW1uyUvJi4O0nPDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/PipTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$5wOr4WCerG3hW1uyUvJi4O0nPDE;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$5wOr4WCerG3hW1uyUvJi4O0nPDE;->f$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$new$0$PipTaskOrganizer(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
