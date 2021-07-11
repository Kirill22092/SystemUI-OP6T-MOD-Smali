.class public Lcom/android/systemui/statusbar/notification/collection/ListDumper;
.super Ljava/lang/Object;
.source "ListDumper.java"


# direct methods
.method private static dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZZ)V
    .locals 4

    .line 103
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string p1, " (parent="

    .line 108
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 110
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getNotifSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, " sectionIndex="

    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sectionName="

    .line 116
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getNotifSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p5, :cond_c

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    const/4 p5, 0x0

    const-string v0, " "

    if-nez p4, :cond_4

    .line 125
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    new-array v1, p4, [Ljava/lang/String;

    move v2, p5

    :goto_1
    if-ge v2, p4, :cond_3

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p4, "lifetimeExtenders="

    .line 129
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_4
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_6

    .line 135
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    new-array v1, p4, [Ljava/lang/String;

    :goto_2
    if-ge p5, p4, :cond_5

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifDismissInterceptor;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    const-string p4, "dismissInterceptors="

    .line 139
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p4

    if-eqz p4, :cond_7

    const-string p4, "filter="

    .line 145
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getNotifPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object p4

    if-eqz p4, :cond_8

    const-string p4, "promoter="

    .line 151
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getNotifPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_8
    iget p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    const/4 p5, -0x1

    if-eq p4, p5, :cond_9

    const-string p4, "cancellationReason="

    .line 157
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 158
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object p4

    sget-object p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    if-eq p4, p5, :cond_a

    const-string p4, "dismissState="

    .line 163
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDismissState()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string p0, "interacted="

    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_b

    const-string/jumbo p0, "yes"

    goto :goto_3

    :cond_b
    const-string p0, "no"

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "\n\t"

    .line 172
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string p0, "\n"

    .line 178
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static dumpList(Ljava/util/List;ZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v8, v0

    .line 81
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 83
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 84
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, v7

    move v5, p1

    .line 82
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpTree(Ljava/util/List;Lcom/android/systemui/statusbar/NotificationInteractionTracker;ZLjava/lang/String;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, p3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v11

    .line 45
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_1

    move-object/from16 v13, p0

    .line 46
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 48
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    .line 53
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    move-result v7

    move-object v1, v14

    move-object/from16 v3, p3

    move-object v4, v8

    move/from16 v6, p2

    .line 47
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZZ)V

    .line 54
    instance-of v1, v14, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v1, :cond_0

    .line 55
    move-object v1, v14

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 56
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v15

    move v7, v11

    .line 57
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 58
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    .line 64
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    move-result v16

    move-object v3, v10

    move-object v4, v8

    move/from16 v6, p2

    move/from16 v17, v7

    move/from16 v7, v16

    .line 58
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZZ)V

    add-int/lit8 v7, v17, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
