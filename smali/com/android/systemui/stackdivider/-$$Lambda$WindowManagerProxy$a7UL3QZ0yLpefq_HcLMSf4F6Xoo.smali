.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$a7UL3QZ0yLpefq_HcLMSf4F6Xoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$a7UL3QZ0yLpefq_HcLMSf4F6Xoo;->f$0:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$WindowManagerProxy$a7UL3QZ0yLpefq_HcLMSf4F6Xoo;->f$0:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->lambda$applyDismissSplit$1(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method
