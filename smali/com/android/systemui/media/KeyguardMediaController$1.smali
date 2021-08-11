.class public final Lcom/android/systemui/media/KeyguardMediaController$1;
.super Ljava/lang/Object;
.source "KeyguardMediaController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/KeyguardMediaController;-><init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/KeyguardMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/KeyguardMediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController$1;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-static {p0}, Lcom/android/systemui/media/KeyguardMediaController;->access$updateVisibility(Lcom/android/systemui/media/KeyguardMediaController;)V

    return-void
.end method
