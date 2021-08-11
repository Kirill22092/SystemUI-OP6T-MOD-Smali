.class final Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$updateCurrentNetworkType$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "OpBitmojiNetworkTypeObserver.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->updateCurrentNetworkType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$updateCurrentNetworkType$$inlined$let$lambda$1;->$it:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$updateCurrentNetworkType$$inlined$let$lambda$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$updateCurrentNetworkType$$inlined$let$lambda$1;->$it:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$updateCurrentNetworkType$$inlined$let$lambda$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->access$getMNetworkType$p(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;->onNetworkTypeChange(I)V

    return-void
.end method
