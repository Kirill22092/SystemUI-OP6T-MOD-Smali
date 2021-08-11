.class final Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->addResumptionControls(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/Runnable;

.field final synthetic $appIntent:Landroid/app/PendingIntent;

.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $desc:Landroid/media/MediaDescription;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $token:Landroid/media/session/MediaSession$Token;

.field final synthetic $userId:I

.field final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataManager;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput p2, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$userId:I

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    iput-object p6, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget v1, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$userId:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    iget-object v3, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    iget-object v5, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/MediaDataManager;->access$loadMediaDataInBgForResumption(Lcom/android/systemui/media/MediaDataManager;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method
