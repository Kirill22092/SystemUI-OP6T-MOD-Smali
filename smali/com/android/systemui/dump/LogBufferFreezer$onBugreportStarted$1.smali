.class final Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;
.super Ljava/lang/Object;
.source "LogBufferFreezer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dump/LogBufferFreezer;->onBugreportStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dump/LogBufferFreezer;


# direct methods
.method constructor <init>(Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "LogBufferFreezer"

    const-string v1, "Unfreezing log buffers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/dump/LogBufferFreezer;->access$setPendingToken$p(Lcom/android/systemui/dump/LogBufferFreezer;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-static {p0}, Lcom/android/systemui/dump/LogBufferFreezer;->access$getDumpManager$p(Lcom/android/systemui/dump/LogBufferFreezer;)Lcom/android/systemui/dump/DumpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/dump/DumpManager;->unfreezeBuffers()V

    return-void
.end method
