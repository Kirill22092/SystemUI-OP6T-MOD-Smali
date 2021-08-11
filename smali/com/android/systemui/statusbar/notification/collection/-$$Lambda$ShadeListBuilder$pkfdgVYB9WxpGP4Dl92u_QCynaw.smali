.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/-$$Lambda$ShadeListBuilder$pkfdgVYB9WxpGP4Dl92u_QCynaw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->lambda$freeEmptyGroups$1(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Z

    move-result p0

    return p0
.end method
