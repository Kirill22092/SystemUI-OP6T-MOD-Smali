.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$ScreenRecordTile$qbmpsZNn23bn5rqlkcpltHLJl4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenRecordTile;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$ScreenRecordTile$qbmpsZNn23bn5rqlkcpltHLJl4w;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$ScreenRecordTile$qbmpsZNn23bn5rqlkcpltHLJl4w;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$ScreenRecordTile$qbmpsZNn23bn5rqlkcpltHLJl4w;->f$0:Lcom/android/systemui/qs/tiles/ScreenRecordTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$ScreenRecordTile$qbmpsZNn23bn5rqlkcpltHLJl4w;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenRecordTile;->lambda$showPrompt$1$ScreenRecordTile(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
