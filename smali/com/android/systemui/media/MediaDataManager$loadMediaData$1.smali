.class final Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->loadMediaData(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $oldKey:Ljava/lang/String;

.field final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/media/MediaDataManager;->access$loadMediaDataInBg(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method
