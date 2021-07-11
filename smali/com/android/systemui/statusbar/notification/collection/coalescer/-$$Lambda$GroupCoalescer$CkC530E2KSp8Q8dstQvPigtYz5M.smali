.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$CkC530E2KSp8Q8dstQvPigtYz5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$CkC530E2KSp8Q8dstQvPigtYz5M;->f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$CkC530E2KSp8Q8dstQvPigtYz5M;->f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$CkC530E2KSp8Q8dstQvPigtYz5M;->f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/-$$Lambda$GroupCoalescer$CkC530E2KSp8Q8dstQvPigtYz5M;->f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->lambda$resetShortTimeout$0$GroupCoalescer(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    return-void
.end method
