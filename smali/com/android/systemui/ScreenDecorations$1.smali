.class Lcom/android/systemui/ScreenDecorations$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ScreenDecorations"

    const-string p2, "Shutdown & remove all overlays"

    .line 239
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)V

    :cond_0
    return-void
.end method
