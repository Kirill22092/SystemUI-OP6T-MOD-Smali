.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$GOAuS5OHN9G6QYbzIYpoI-wl0uI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

.field public final synthetic f$1:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$GOAuS5OHN9G6QYbzIYpoI-wl0uI;->f$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$GOAuS5OHN9G6QYbzIYpoI-wl0uI;->f$1:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$GOAuS5OHN9G6QYbzIYpoI-wl0uI;->f$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$GOAuS5OHN9G6QYbzIYpoI-wl0uI;->f$1:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->lambda$handleUpdateState$1$OPReverseChargeTile(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    return-void
.end method
