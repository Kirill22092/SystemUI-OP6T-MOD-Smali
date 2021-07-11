.class public final Lcom/android/systemui/dump/LogBufferFreezer$attach$1;
.super Landroid/content/BroadcastReceiver;
.source "LogBufferFreezer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dump/LogBufferFreezer;->attach(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dump/LogBufferFreezer;


# direct methods
.method constructor <init>(Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    invoke-static {p0}, Lcom/android/systemui/dump/LogBufferFreezer;->access$onBugreportStarted(Lcom/android/systemui/dump/LogBufferFreezer;)V

    return-void
.end method
