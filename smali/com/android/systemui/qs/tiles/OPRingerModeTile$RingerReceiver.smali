.class final Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OPRingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/OPRingerModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/OPRingerModeTile;Lcom/android/systemui/qs/tiles/OPRingerModeTile$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;-><init>(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 220
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->access$400(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    :cond_0
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 226
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->access$500(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive INTERNAL_RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-static {p2, p1}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->access$600(Lcom/android/systemui/qs/tiles/OPRingerModeTile;I)V

    .line 228
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    :cond_1
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 231
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 232
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 234
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->access$700(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive STREAM_MUTE_CHANGED_ACTION stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", muted="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public register()V
    .locals 4

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->access$200(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->access$100(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPRingerModeTile$RingerReceiver;->this$0:Lcom/android/systemui/qs/tiles/OPRingerModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/OPRingerModeTile;->access$300(Lcom/android/systemui/qs/tiles/OPRingerModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
