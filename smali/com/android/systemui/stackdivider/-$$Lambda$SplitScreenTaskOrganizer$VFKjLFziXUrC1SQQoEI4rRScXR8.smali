.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$SplitScreenTaskOrganizer$VFKjLFziXUrC1SQQoEI4rRScXR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SplitScreenTaskOrganizer$VFKjLFziXUrC1SQQoEI4rRScXR8;->f$0:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SplitScreenTaskOrganizer$VFKjLFziXUrC1SQQoEI4rRScXR8;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SplitScreenTaskOrganizer$VFKjLFziXUrC1SQQoEI4rRScXR8;->f$0:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$SplitScreenTaskOrganizer$VFKjLFziXUrC1SQQoEI4rRScXR8;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->lambda$onTaskInfoChanged$0$SplitScreenTaskOrganizer(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
