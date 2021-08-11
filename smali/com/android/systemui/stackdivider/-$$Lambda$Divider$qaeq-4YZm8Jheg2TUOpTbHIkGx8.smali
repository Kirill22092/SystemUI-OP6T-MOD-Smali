.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$Divider$qaeq-4YZm8Jheg2TUOpTbHIkGx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/stackdivider/Divider;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$qaeq-4YZm8Jheg2TUOpTbHIkGx8;->f$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$qaeq-4YZm8Jheg2TUOpTbHIkGx8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$qaeq-4YZm8Jheg2TUOpTbHIkGx8;->f$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$qaeq-4YZm8Jheg2TUOpTbHIkGx8;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/Divider;->lambda$setMinimized$4$Divider(Z)V

    return-void
.end method
