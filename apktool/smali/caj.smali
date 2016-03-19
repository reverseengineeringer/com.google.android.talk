.class public final Lcaj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lbfd;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

.field private d:J

.field private final e:Lcal;

.field private f:Lepa;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;Lbfd;)V
    .locals 1

    .prologue
    .line 1943
    iput-object p1, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1887
    new-instance v0, Lcal;

    .line 2891
    invoke-direct {v0, p0}, Lcal;-><init>(Lcaj;)V

    .line 1887
    iput-object v0, p0, Lcaj;->e:Lcal;

    .line 1944
    iput-object p2, p0, Lcaj;->a:Lbfd;

    .line 1945
    return-void
.end method

.method private a(Ljava/lang/String;JZZ)V
    .locals 4

    .prologue
    .line 2071
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2072
    invoke-static {p1}, Laal;->f(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2073
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2075
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 2076
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2079
    aput-wide p2, v2, v0

    .line 2076
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2082
    :cond_1
    iget-object v3, p0, Lcaj;->a:Lbfd;

    .line 2083
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2082
    invoke-static {v3, v0, v2, p4, p5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;[Ljava/lang/String;[JZZ)I

    .line 2085
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcaj;->e:Lcal;

    invoke-virtual {v0}, Lcal;->a()V

    .line 1970
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Lcaj;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1981
    :cond_0
    return-void

    .line 1977
    :cond_1
    :goto_0
    iget-object v0, p0, Lcaj;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1979
    iget-object v1, p0, Lcaj;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1955
    iget-object v0, p0, Lcaj;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcaj;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1956
    const-string v0, "last_archived"

    iget-object v1, p0, Lcaj;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1958
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcaj;->e:Lcal;

    invoke-virtual {v0, p1}, Lcal;->a(Ljava/lang/String;)V

    .line 1966
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    .line 2054
    invoke-direct/range {v0 .. v5}, Lcaj;->a(Ljava/lang/String;JZZ)V

    .line 2055
    return-void
.end method

.method public a(Ljava/lang/String;JZ)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1991
    if-eqz p4, :cond_4

    .line 1992
    iget-object v0, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 3112
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->binder:Lilh;

    .line 1992
    const-class v1, Lhba;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v1, p0, Lcaj;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xb45

    .line 1993
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 1999
    :goto_0
    iget-object v0, p0, Lcaj;->e:Lcal;

    invoke-virtual {v0, p1, p2, p3}, Lcal;->a(Ljava/lang/String;J)Z

    move-result v0

    .line 2001
    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    .line 2002
    invoke-direct/range {v0 .. v5}, Lcaj;->a(Ljava/lang/String;JZZ)V

    .line 2005
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2007
    iget-object v2, p0, Lcaj;->b:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 2008
    iget-wide v2, p0, Lcaj;->d:J

    sub-long v2, v0, v2

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 2009
    iget-object v2, p0, Lcaj;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2015
    :cond_1
    :goto_1
    iput-wide v0, p0, Lcaj;->d:J

    .line 2016
    iget-object v0, p0, Lcaj;->b:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    iget-object v0, p0, Lcaj;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 5024
    new-instance v1, Lepb;

    iget-object v2, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 5112
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->context:Lill;

    .line 5024
    invoke-direct {v1, v2}, Lepb;-><init>(Landroid/content/Context;)V

    .line 5025
    if-le v0, v4, :cond_6

    .line 5026
    iget-object v2, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->gt:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    .line 5033
    :goto_2
    iget-object v0, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->r:I

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lepb;->c(Ljava/lang/String;)Lepb;

    .line 5034
    new-instance v0, Lcak;

    .line 6094
    invoke-direct {v0, p0, p4}, Lcak;-><init>(Lcaj;Z)V

    .line 5034
    invoke-virtual {v1, v0}, Lepb;->a(Leph;)Lepb;

    .line 5035
    invoke-virtual {v1}, Lepb;->b()Lepa;

    move-result-object v0

    .line 5039
    iget-object v1, p0, Lcaj;->f:Lepa;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcaj;->f:Lepa;

    invoke-virtual {v1, v0}, Lepa;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5040
    :cond_2
    iget-object v1, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 6112
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->i:Lcao;

    .line 5040
    invoke-interface {v1, v0}, Lcao;->a(Lepa;)V

    .line 5044
    :goto_3
    iput-object v0, p0, Lcaj;->f:Lepa;

    .line 5030
    :cond_3
    return-void

    .line 1995
    :cond_4
    iget-object v0, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 4112
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->binder:Lilh;

    .line 1995
    const-class v1, Lhba;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v1, p0, Lcaj;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xb47

    .line 1996
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    goto/16 :goto_0

    .line 2012
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcaj;->b:Ljava/util/HashMap;

    goto/16 :goto_1

    .line 5027
    :cond_6
    if-ne v0, v4, :cond_3

    .line 5028
    iget-object v0, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->aq:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)Lepb;

    goto :goto_2

    .line 5042
    :cond_7
    iget-object v1, p0, Lcaj;->c:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 7112
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->i:Lcao;

    .line 5042
    iget-object v2, p0, Lcaj;->f:Lepa;

    invoke-interface {v1, v2, v0}, Lcao;->a(Lepa;Lepa;)V

    goto :goto_3
.end method

.method a(Ljava/util/Map;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2059
    if-nez p1, :cond_1

    .line 2067
    :cond_0
    return-void

    .line 2063
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2064
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 8051
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2065
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcaj;->a(Ljava/lang/String;JZZ)V

    goto :goto_0
.end method
