.class final Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;
.super Ljava/lang/Object;
.source "ScreenRecordTile.java"

# interfaces
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenRecordTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;Lcom/android/systemui/qs/tiles/ScreenRecordTile$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;)V

    return-void
.end method


# virtual methods
.method public onCountdown(J)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->access$102(Lcom/android/systemui/qs/tiles/ScreenRecordTile;J)J

    .line 139
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onCountdownEnd()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onRecordingEnd()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onRecordingStart()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenRecordTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
