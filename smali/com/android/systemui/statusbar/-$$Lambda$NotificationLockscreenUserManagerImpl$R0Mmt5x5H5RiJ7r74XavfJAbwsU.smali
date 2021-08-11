.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$R0Mmt5x5H5RiJ7r74XavfJAbwsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$R0Mmt5x5H5RiJ7r74XavfJAbwsU;->f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iput p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$R0Mmt5x5H5RiJ7r74XavfJAbwsU;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$R0Mmt5x5H5RiJ7r74XavfJAbwsU;->f$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$R0Mmt5x5H5RiJ7r74XavfJAbwsU;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->lambda$updatePublicMode$2$NotificationLockscreenUserManagerImpl(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
