.class final Lcom/android/systemui/media/MediaDataFilter$1$onUserSwitched$1;
.super Ljava/lang/Object;
.source "MediaDataFilter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataFilter$1;->onUserSwitched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newUserId:I

.field final synthetic this$0:Lcom/android/systemui/media/MediaDataFilter$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataFilter$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter$1$onUserSwitched$1;->this$0:Lcom/android/systemui/media/MediaDataFilter$1;

    iput p2, p0, Lcom/android/systemui/media/MediaDataFilter$1$onUserSwitched$1;->$newUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter$1$onUserSwitched$1;->this$0:Lcom/android/systemui/media/MediaDataFilter$1;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataFilter$1;->this$0:Lcom/android/systemui/media/MediaDataFilter;

    iget p0, p0, Lcom/android/systemui/media/MediaDataFilter$1$onUserSwitched$1;->$newUserId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaDataFilter;->handleUserSwitched$packages__apps__OPSystemUI__android_common__OPSystemUI_core(I)V

    return-void
.end method
