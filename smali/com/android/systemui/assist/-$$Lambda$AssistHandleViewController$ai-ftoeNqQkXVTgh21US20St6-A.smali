.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$ai-ftoeNqQkXVTgh21US20St6-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/AssistHandleViewController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistHandleViewController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$ai-ftoeNqQkXVTgh21US20St6-A;->f$0:Lcom/android/systemui/assist/AssistHandleViewController;

    iput-boolean p2, p0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$ai-ftoeNqQkXVTgh21US20St6-A;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$ai-ftoeNqQkXVTgh21US20St6-A;->f$0:Lcom/android/systemui/assist/AssistHandleViewController;

    iget-boolean p0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$ai-ftoeNqQkXVTgh21US20St6-A;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/assist/AssistHandleViewController;->lambda$setAssistHintBlocked$1$AssistHandleViewController(Z)V

    return-void
.end method
