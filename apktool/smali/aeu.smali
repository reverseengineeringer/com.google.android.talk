.class public final Laeu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafh;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laey;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafj;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafg;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafc;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafm;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laff;",
            ">;"
        }
    .end annotation
.end field

.field public h:Laex;

.field private final j:Lafd;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafi;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafk;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafe;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laev;",
            ">;"
        }
    .end annotation
.end field

.field private o:Laew;

.field private final p:I

.field private final q:Landroid/accounts/Account;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laeu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    sput-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Laeu;->i:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1849
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laeu;->s:Ljava/util/List;

    .line 1848
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Laeu;-><init>(B)V

    .line 1754
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 1757
    const/high16 v0, -0x40000000    # -2.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Laeu;-><init>(ILandroid/accounts/Account;)V

    .line 1758
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 1760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    new-instance v0, Lafd;

    invoke-direct {v0}, Lafd;-><init>()V

    iput-object v0, p0, Laeu;->j:Lafd;

    .line 1761
    iput p1, p0, Laeu;->p:I

    .line 1762
    iput-object p2, p0, Laeu;->q:Landroid/accounts/Account;

    .line 1763
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1766
    iget-object v2, p0, Laeu;->a:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laeu;->a:Ljava/util/List;

    .line 1769
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1770
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1772
    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    iget v3, p0, Laeu;->p:I

    invoke-static {v3}, Laet;->f(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v2

    .line 1802
    :goto_0
    new-instance v1, Lafh;

    invoke-direct {v1, v0, p1, p3, p4}, Lafh;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1803
    iget-object v0, p0, Laeu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1804
    return-void

    .line 1780
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v0

    .line 1781
    :goto_1
    if-ge v3, v5, :cond_a

    .line 1782
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1784
    const/16 v7, 0x70

    if-eq v6, v7, :cond_3

    const/16 v7, 0x50

    if-ne v6, v7, :cond_5

    .line 1785
    :cond_3
    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1781
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1787
    :cond_5
    const/16 v7, 0x77

    if-eq v6, v7, :cond_6

    const/16 v7, 0x57

    if-ne v6, v7, :cond_7

    .line 1788
    :cond_6
    const/16 v0, 0x3b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1789
    goto :goto_2

    .line 1790
    :cond_7
    const/16 v7, 0x30

    if-gt v7, v6, :cond_8

    const/16 v7, 0x39

    if-le v6, v7, :cond_9

    :cond_8
    if-nez v3, :cond_4

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_4

    .line 1791
    :cond_9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1794
    :cond_a
    if-nez v0, :cond_b

    .line 1795
    iget v0, p0, Laeu;->p:I

    invoke-static {v0}, Lafz;->a(I)I

    move-result v0

    .line 1797
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5092
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5093
    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 5094
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1799
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1945
    iget-object v0, p0, Laeu;->d:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1948
    invoke-direct/range {v0 .. v6}, Laeu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1960
    :goto_0
    return-void

    .line 1951
    :cond_0
    iget-object v0, p0, Laeu;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    .line 11730
    iget-object v3, v0, Lafg;->c:Ljava/lang/String;

    .line 1952
    if-nez v3, :cond_1

    .line 12730
    iput-object p1, v0, Lafg;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1959
    invoke-direct/range {v0 .. v6}, Laeu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    .prologue
    .line 1841
    iget-object v0, p0, Laeu;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeu;->d:Ljava/util/List;

    .line 1844
    :cond_0
    iget-object v7, p0, Laeu;->d:Ljava/util/List;

    new-instance v0, Lafg;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lafg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1846
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2452
    :cond_0
    :goto_0
    return-void

    .line 2419
    :cond_1
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2420
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2421
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    :cond_2
    const/4 v3, -0x1

    .line 2427
    const/4 v1, 0x0

    .line 2429
    if-eqz p2, :cond_b

    .line 2430
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2431
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 2432
    const-string v9, "PREF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v4, v5

    .line 2433
    goto :goto_1

    .line 2434
    :cond_3
    const-string v9, "HOME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v3, v5

    .line 2435
    goto :goto_1

    .line 2436
    :cond_4
    const-string v9, "WORK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v3, v6

    .line 2437
    goto :goto_1

    .line 2438
    :cond_5
    if-gez v3, :cond_a

    .line 2439
    const-string v1, "X-"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2440
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    move v1, v2

    :goto_2
    move v3, v1

    move-object v1, v0

    .line 2446
    goto :goto_1

    :cond_7
    move v0, v3

    .line 2448
    :goto_3
    if-gez v0, :cond_8

    .line 2449
    const/4 v0, 0x3

    .line 46807
    :cond_8
    iget-object v2, p0, Laeu;->l:Ljava/util/List;

    if-nez v2, :cond_9

    .line 46808
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laeu;->l:Ljava/util/List;

    .line 46810
    :cond_9
    iget-object v2, p0, Laeu;->l:Ljava/util/List;

    new-instance v3, Lafk;

    invoke-direct {v3, p1, v0, v1, v4}, Lafk;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    move-object v0, v1

    move v1, v3

    goto :goto_2

    :cond_b
    move v4, v2

    move v0, v3

    goto :goto_3
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2065
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 13120
    iget-object v0, v0, Lafd;->g:Ljava/lang/String;

    .line 2065
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laeu;->j:Lafd;

    .line 14120
    iget-object v0, v0, Lafd;->i:Ljava/lang/String;

    .line 2066
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laeu;->j:Lafd;

    .line 15120
    iget-object v0, v0, Lafd;->h:Ljava/lang/String;

    .line 2067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2122
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2081
    if-le v0, v2, :cond_7

    move v1, v2

    .line 2085
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v5, v4

    .line 2087
    :goto_2
    if-ge v5, v1, :cond_6

    .line 2088
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    .line 2093
    :goto_3
    if-eqz v0, :cond_5

    .line 2094
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2095
    array-length v1, v0

    .line 2096
    if-ne v1, v2, :cond_3

    .line 2098
    iget-object v1, p0, Laeu;->j:Lafd;

    aget-object v2, v0, v3

    .line 16120
    iput-object v2, v1, Lafd;->g:Ljava/lang/String;

    .line 2099
    iget-object v1, p0, Laeu;->j:Lafd;

    aget-object v2, v0, v4

    .line 17120
    iput-object v2, v1, Lafd;->i:Ljava/lang/String;

    .line 2100
    iget-object v1, p0, Laeu;->j:Lafd;

    aget-object v0, v0, v6

    .line 18120
    iput-object v0, v1, Lafd;->h:Ljava/lang/String;

    goto :goto_0

    .line 2087
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 2101
    :cond_3
    if-ne v1, v6, :cond_4

    .line 2104
    iget-object v1, p0, Laeu;->j:Lafd;

    aget-object v2, v0, v3

    .line 19120
    iput-object v2, v1, Lafd;->g:Ljava/lang/String;

    .line 2105
    iget-object v1, p0, Laeu;->j:Lafd;

    aget-object v0, v0, v4

    .line 20120
    iput-object v0, v1, Lafd;->h:Ljava/lang/String;

    goto :goto_0

    .line 2107
    :cond_4
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21120
    iput-object v0, v1, Lafd;->h:Ljava/lang/String;

    goto :goto_0

    .line 2113
    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 2120
    :goto_4
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24120
    iput-object v0, v1, Lafd;->g:Ljava/lang/String;

    goto :goto_0

    .line 2116
    :pswitch_0
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22120
    iput-object v0, v1, Lafd;->i:Ljava/lang/String;

    .line 2118
    :pswitch_1
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23120
    iput-object v0, v1, Lafd;->h:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    move v1, v0

    goto/16 :goto_1

    .line 2113
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/List;Lafa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Laez;",
            ">;",
            "Lafa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1617
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1618
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laez;

    invoke-interface {v0}, Laez;->a()Lafb;

    move-result-object v0

    invoke-interface {p1, v0}, Lafa;->a(Lafb;)V

    .line 1619
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laez;

    .line 1620
    invoke-interface {p1, v0}, Lafa;->a(Laez;)Z

    goto :goto_0

    .line 1622
    :cond_0
    invoke-interface {p1}, Lafa;->c()V

    .line 1624
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 5852
    const-string v0, "SORT-AS"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 5853
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 5854
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 5855
    const-string v1, "Incorrect multiple SORT_AS parameters detected: "

    .line 5857
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5860
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Laeu;->p:I

    .line 5859
    invoke-static {v0, v1}, Lafz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5862
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5863
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5857
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5865
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1881
    :goto_2
    if-nez p1, :cond_3

    .line 1882
    sget-object p1, Laeu;->s:Ljava/util/List;

    .line 1886
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 1887
    packed-switch v6, :pswitch_data_0

    .line 1899
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1902
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    .line 1903
    :goto_3
    if-ge v2, v6, :cond_6

    .line 1904
    if-le v2, v5, :cond_4

    .line 1905
    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1907
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_5
    move-object v4, v3

    .line 5867
    goto :goto_2

    .line 1889
    :pswitch_0
    const-string v0, ""

    move-object v2, v3

    move-object v1, v0

    .line 1912
    :goto_4
    iget-object v0, p0, Laeu;->d:Ljava/util/List;

    if-nez v0, :cond_7

    move-object v0, p0

    move v6, p3

    .line 1915
    invoke-direct/range {v0 .. v6}, Laeu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1935
    :goto_5
    return-void

    .line 1894
    :pswitch_1
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v1, v0

    .line 1896
    goto :goto_4

    .line 1909
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    goto :goto_4

    .line 1919
    :cond_7
    iget-object v0, p0, Laeu;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    .line 6730
    iget-object v7, v0, Lafg;->a:Ljava/lang/String;

    .line 1922
    if-nez v7, :cond_8

    .line 7730
    iget-object v7, v0, Lafg;->b:Ljava/lang/String;

    .line 1923
    if-nez v7, :cond_8

    .line 8730
    iput-object v1, v0, Lafg;->a:Ljava/lang/String;

    .line 9730
    iput-object v2, v0, Lafg;->b:Ljava/lang/String;

    .line 10730
    iput-boolean p3, v0, Lafg;->d:Z

    goto :goto_5

    :cond_9
    move-object v0, p0

    move v6, p3

    .line 1934
    invoke-direct/range {v0 .. v6}, Laeu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_5

    .line 1887
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2473
    const/4 v0, 0x0

    .line 2475
    iget-object v1, p0, Laeu;->j:Lafd;

    .line 47120
    iget-object v1, v1, Lafd;->f:Ljava/lang/String;

    .line 2475
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2476
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 48120
    iget-object v0, v0, Lafd;->f:Ljava/lang/String;

    .line 2492
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2493
    const-string v0, ""

    .line 2495
    :cond_1
    return-object v0

    .line 2477
    :cond_2
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-virtual {v1}, Lafd;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2478
    iget v0, p0, Laeu;->p:I

    iget-object v1, p0, Laeu;->j:Lafd;

    .line 49120
    iget-object v1, v1, Lafd;->a:Ljava/lang/String;

    .line 2478
    iget-object v2, p0, Laeu;->j:Lafd;

    .line 50120
    iget-object v2, v2, Lafd;->c:Ljava/lang/String;

    .line 2479
    iget-object v3, p0, Laeu;->j:Lafd;

    .line 50121
    iget-object v3, v3, Lafd;->b:Ljava/lang/String;

    .line 2479
    iget-object v4, p0, Laeu;->j:Lafd;

    .line 50122
    iget-object v4, v4, Lafd;->d:Ljava/lang/String;

    .line 2479
    iget-object v5, p0, Laeu;->j:Lafd;

    .line 50123
    iget-object v5, v5, Lafd;->e:Ljava/lang/String;

    .line 2478
    invoke-static/range {v0 .. v5}, Lafz;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2480
    :cond_3
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-virtual {v1}, Lafd;->c()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2481
    iget v0, p0, Laeu;->p:I

    iget-object v1, p0, Laeu;->j:Lafd;

    .line 50124
    iget-object v1, v1, Lafd;->g:Ljava/lang/String;

    .line 2482
    iget-object v2, p0, Laeu;->j:Lafd;

    .line 50125
    iget-object v2, v2, Lafd;->i:Ljava/lang/String;

    .line 2482
    iget-object v3, p0, Laeu;->j:Lafd;

    .line 50126
    iget-object v3, v3, Lafd;->h:Ljava/lang/String;

    .line 2481
    invoke-static {v0, v1, v2, v3}, Lafz;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2483
    :cond_4
    iget-object v1, p0, Laeu;->b:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Laeu;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2484
    iget-object v0, p0, Laeu;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laey;

    .line 50127
    iget-object v0, v0, Laey;->a:Ljava/lang/String;

    goto :goto_0

    .line 2485
    :cond_5
    iget-object v1, p0, Laeu;->a:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Laeu;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 2486
    iget-object v0, p0, Laeu;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafh;

    .line 50128
    iget-object v0, v0, Lafh;->a:Ljava/lang/String;

    goto :goto_0

    .line 2487
    :cond_6
    iget-object v1, p0, Laeu;->c:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Laeu;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2488
    iget-object v0, p0, Laeu;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafj;

    iget v1, p0, Laeu;->p:I

    invoke-virtual {v0, v1}, Lafj;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2489
    :cond_7
    iget-object v1, p0, Laeu;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laeu;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2490
    iget-object v0, p0, Laeu;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    invoke-virtual {v0}, Lafg;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2502
    iget-object v0, p0, Laeu;->j:Lafd;

    invoke-direct {p0}, Laeu;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lafd;->k:Ljava/lang/String;

    .line 2503
    return-void
.end method

.method public a(Laeu;)V
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Laeu;->r:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeu;->r:Ljava/util/List;

    .line 2458
    :cond_0
    iget-object v0, p0, Laeu;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    return-void
.end method

.method public a(Lafx;)V
    .locals 14

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 2125
    invoke-virtual {p1}, Lafx;->a()Ljava/lang/String;

    move-result-object v1

    .line 2126
    invoke-virtual {p1}, Lafx;->b()Ljava/util/Map;

    move-result-object v9

    .line 2127
    invoke-virtual {p1}, Lafx;->d()Ljava/util/List;

    move-result-object v10

    .line 2128
    invoke-virtual {p1}, Lafx;->e()[B

    move-result-object v5

    .line 2130
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez v5, :cond_2

    .line 28036
    :cond_1
    :goto_0
    return-void

    .line 2134
    :cond_2
    if-eqz v10, :cond_7

    .line 24575
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 24576
    if-le v3, v6, :cond_5

    .line 24577
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 24579
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24580
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24581
    add-int/lit8 v0, v3, -0x1

    if-lez v0, :cond_3

    .line 24582
    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 24585
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2135
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2138
    :goto_3
    const-string v0, "VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2140
    const-string v0, "FN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2141
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 25120
    iput-object v3, v0, Lafd;->f:Ljava/lang/String;

    goto :goto_0

    .line 24586
    :cond_5
    if-ne v3, v6, :cond_6

    .line 24587
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 24589
    :cond_6
    const-string v0, ""

    goto :goto_2

    :cond_7
    move-object v3, v2

    .line 2136
    goto :goto_3

    .line 2142
    :cond_8
    const-string v0, "NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2145
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 26120
    iget-object v0, v0, Lafd;->f:Ljava/lang/String;

    .line 2145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2146
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 27120
    iput-object v3, v0, Lafd;->f:Ljava/lang/String;

    goto :goto_0

    .line 2148
    :cond_9
    const-string v0, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 28995
    iget v0, p0, Laeu;->p:I

    invoke-static {v0}, Laet;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Laeu;->j:Lafd;

    .line 29120
    iget-object v0, v0, Lafd;->g:Ljava/lang/String;

    .line 28996
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Laeu;->j:Lafd;

    .line 30120
    iget-object v0, v0, Lafd;->i:Ljava/lang/String;

    .line 28997
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Laeu;->j:Lafd;

    .line 31120
    iget-object v0, v0, Lafd;->h:Ljava/lang/String;

    .line 28998
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 28035
    :cond_a
    :goto_4
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 28038
    const/4 v1, 0x5

    if-le v0, v1, :cond_b

    .line 28039
    const/4 v0, 0x5

    .line 28042
    :cond_b
    packed-switch v0, :pswitch_data_0

    .line 28053
    :goto_5
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39120
    iput-object v0, v1, Lafd;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 29002
    :cond_c
    const-string v0, "SORT-AS"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 29003
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_a

    .line 29004
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v6, :cond_d

    .line 29005
    const-string v1, "Incorrect multiple SORT_AS parameters detected: "

    .line 29007
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29010
    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Laeu;->p:I

    .line 29009
    invoke-static {v0, v1}, Lafz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 29011
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 29012
    if-le v0, v8, :cond_e

    move v0, v8

    .line 29015
    :cond_e
    packed-switch v0, :pswitch_data_1

    .line 29021
    :goto_7
    iget-object v2, p0, Laeu;->j:Lafd;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34120
    iput-object v0, v2, Lafd;->g:Ljava/lang/String;

    goto :goto_4

    .line 29007
    :cond_f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 29017
    :pswitch_0
    iget-object v2, p0, Laeu;->j:Lafd;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32120
    iput-object v0, v2, Lafd;->i:Ljava/lang/String;

    .line 29019
    :pswitch_1
    iget-object v2, p0, Laeu;->j:Lafd;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33120
    iput-object v0, v2, Lafd;->h:Ljava/lang/String;

    goto :goto_7

    .line 28045
    :pswitch_2
    iget-object v1, p0, Laeu;->j:Lafd;

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35120
    iput-object v0, v1, Lafd;->e:Ljava/lang/String;

    .line 28047
    :pswitch_3
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36120
    iput-object v0, v1, Lafd;->d:Ljava/lang/String;

    .line 28049
    :pswitch_4
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37120
    iput-object v0, v1, Lafd;->c:Ljava/lang/String;

    .line 28051
    :pswitch_5
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38120
    iput-object v0, v1, Lafd;->b:Ljava/lang/String;

    goto/16 :goto_5

    .line 2150
    :cond_10
    const-string v0, "SORT-STRING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2151
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 40120
    iput-object v3, v0, Lafd;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 2152
    :cond_11
    const-string v0, "NICKNAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "X-NICKNAME"

    .line 2153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40814
    :cond_12
    iget-object v0, p0, Laeu;->m:Ljava/util/List;

    if-nez v0, :cond_13

    .line 40815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeu;->m:Ljava/util/List;

    .line 40817
    :cond_13
    iget-object v0, p0, Laeu;->m:Ljava/util/List;

    new-instance v1, Lafe;

    invoke-direct {v1, v3}, Lafe;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2155
    :cond_14
    const-string v0, "SOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2156
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2157
    if-eqz v0, :cond_1

    const-string v1, "X-IRMC-N"

    .line 2158
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2163
    iget v0, p0, Laeu;->p:I

    invoke-static {v3, v0}, Lafz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2165
    invoke-direct {p0, v0}, Laeu;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2169
    :cond_15
    const-string v0, "ADR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2171
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v4

    .line 2177
    :goto_8
    if-nez v0, :cond_1

    .line 2181
    const/4 v1, -0x1

    .line 2184
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2185
    if-eqz v0, :cond_57

    .line 2186
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v2

    move v5, v1

    move v1, v4

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2187
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 2188
    const-string v11, "PREF"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    move v1, v6

    .line 2189
    goto :goto_9

    .line 2190
    :cond_17
    const-string v11, "HOME"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    move-object v3, v2

    move v5, v6

    .line 2192
    goto :goto_9

    .line 2193
    :cond_18
    const-string v11, "WORK"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "COMPANY"

    .line 2195
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_19
    move-object v3, v2

    move v5, v7

    .line 2200
    goto :goto_9

    .line 2201
    :cond_1a
    const-string v11, "PARCEL"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_56

    const-string v11, "DOM"

    .line 2202
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_56

    const-string v11, "INTL"

    .line 2203
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_56

    .line 2205
    if-gez v5, :cond_56

    .line 2207
    const-string v3, "X-"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2208
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v5, v4

    goto :goto_9

    :cond_1b
    move v3, v4

    :goto_a
    move v5, v3

    move-object v3, v0

    .line 2213
    goto :goto_9

    :cond_1c
    move v0, v5

    .line 2216
    :goto_b
    if-gez v0, :cond_55

    .line 40828
    :goto_c
    iget-object v0, p0, Laeu;->c:Ljava/util/List;

    if-nez v0, :cond_1d

    .line 40829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laeu;->c:Ljava/util/List;

    .line 40831
    :cond_1d
    iget-object v0, p0, Laeu;->c:Ljava/util/List;

    iget v2, p0, Laeu;->p:I

    invoke-static {v10, v6, v3, v1, v2}, Lafj;->a(Ljava/util/List;ILjava/lang/String;ZI)Lafj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2221
    :cond_1e
    const-string v0, "EMAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2222
    const/4 v1, -0x1

    .line 2225
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2226
    if-eqz v0, :cond_54

    .line 2227
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v4

    move-object v13, v2

    move v2, v1

    move-object v1, v13

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2228
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 2229
    const-string v11, "PREF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    move v5, v6

    .line 2230
    goto :goto_d

    .line 2231
    :cond_1f
    const-string v11, "HOME"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    move v2, v6

    .line 2232
    goto :goto_d

    .line 2233
    :cond_20
    const-string v11, "WORK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    move v2, v7

    .line 2234
    goto :goto_d

    .line 2235
    :cond_21
    const-string v11, "CELL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 2236
    const/4 v2, 0x4

    goto :goto_d

    .line 2237
    :cond_22
    if-gez v2, :cond_53

    .line 2238
    const-string v1, "X-"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2239
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_23
    move v1, v4

    :goto_e
    move v2, v1

    move-object v1, v0

    .line 2245
    goto :goto_d

    :cond_24
    move v0, v2

    .line 2247
    :goto_f
    if-gez v0, :cond_25

    move v0, v8

    .line 41821
    :cond_25
    iget-object v2, p0, Laeu;->b:Ljava/util/List;

    if-nez v2, :cond_26

    .line 41822
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laeu;->b:Ljava/util/List;

    .line 41824
    :cond_26
    iget-object v2, p0, Laeu;->b:Ljava/util/List;

    new-instance v4, Laey;

    invoke-direct {v4, v3, v0, v1, v5}, Laey;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2251
    :cond_27
    const-string v0, "ORG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2255
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2256
    if-eqz v0, :cond_29

    .line 2257
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2258
    const-string v2, "PREF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v4, v6

    .line 2259
    goto :goto_10

    .line 2263
    :cond_29
    invoke-direct {p0, v10, v9, v4}, Laeu;->a(Ljava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 2264
    :cond_2a
    const-string v0, "TITLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2265
    invoke-direct {p0, v3}, Laeu;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2266
    :cond_2b
    const-string v0, "ROLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2269
    const-string v0, "PHOTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "LOGO"

    .line 2270
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2271
    :cond_2c
    const-string v0, "VALUE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2272
    if-eqz v0, :cond_2d

    const-string v1, "URL"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2275
    :cond_2d
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2278
    if-eqz v0, :cond_2f

    .line 2279
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2280
    const-string v2, "PREF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v4, v6

    .line 2281
    goto :goto_11

    .line 2282
    :cond_2e
    if-nez v1, :cond_52

    :goto_12
    move-object v1, v0

    .line 2285
    goto :goto_11

    :cond_2f
    move-object v1, v2

    .line 41978
    :cond_30
    iget-object v0, p0, Laeu;->k:Ljava/util/List;

    if-nez v0, :cond_31

    .line 41979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laeu;->k:Ljava/util/List;

    .line 41981
    :cond_31
    new-instance v0, Lafi;

    invoke-direct {v0, v1, v5, v4}, Lafi;-><init>(Ljava/lang/String;[BZ)V

    .line 41982
    iget-object v1, p0, Laeu;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2289
    :cond_32
    const-string v0, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2292
    iget v0, p0, Laeu;->p:I

    invoke-static {v0}, Laet;->c(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2295
    const-string v0, "sip:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v6

    move-object v5, v2

    .line 2309
    :goto_13
    if-eqz v0, :cond_36

    .line 2310
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2311
    invoke-direct {p0, v3, v0}, Laeu;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2297
    :cond_33
    const-string v0, "tel:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2298
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, v4

    goto :goto_13

    :cond_34
    move v0, v4

    move-object v5, v3

    .line 2303
    goto :goto_13

    :cond_35
    move v0, v4

    move-object v5, v3

    .line 2306
    goto :goto_13

    .line 2313
    :cond_36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2317
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2318
    invoke-static {v0, v5}, Lafz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2322
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_37

    .line 2323
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2331
    :goto_14
    if-eqz v0, :cond_38

    const-string v3, "PREF"

    .line 2332
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2338
    :goto_15
    invoke-direct {p0, v1, v5, v2, v6}, Laeu;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2327
    :cond_37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v1, v4

    goto :goto_14

    :cond_38
    move v6, v4

    .line 2335
    goto :goto_15

    .line 2340
    :cond_39
    const-string v0, "X-SKYPE-PSTNNUMBER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2342
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2345
    if-eqz v0, :cond_3a

    const-string v1, "PREF"

    .line 2346
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2351
    :goto_16
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3, v2, v6}, Laeu;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3a
    move v6, v4

    .line 2349
    goto :goto_16

    .line 2352
    :cond_3b
    sget-object v0, Laeu;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2353
    sget-object v0, Laeu;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2355
    const/4 v5, -0x1

    .line 2356
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2357
    if-eqz v0, :cond_3e

    .line 2358
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v13, v5

    move v5, v4

    move v4, v13

    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2359
    const-string v9, "PREF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c

    move v5, v6

    .line 2360
    goto :goto_17

    .line 2361
    :cond_3c
    if-gez v4, :cond_51

    .line 2362
    const-string v9, "HOME"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    move v4, v6

    .line 2363
    goto :goto_17

    .line 2364
    :cond_3d
    const-string v9, "WORK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v7

    :goto_18
    move v4, v0

    .line 2368
    goto :goto_17

    :cond_3e
    move v13, v5

    move v5, v4

    move v4, v13

    .line 2370
    :cond_3f
    if-gez v4, :cond_40

    move v4, v6

    .line 42964
    :cond_40
    iget-object v0, p0, Laeu;->e:Ljava/util/List;

    if-nez v0, :cond_41

    .line 42965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeu;->e:Ljava/util/List;

    .line 42967
    :cond_41
    iget-object v6, p0, Laeu;->e:Ljava/util/List;

    new-instance v0, Lafc;

    invoke-direct/range {v0 .. v5}, Lafc;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2374
    :cond_42
    const-string v0, "NOTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 42971
    iget-object v0, p0, Laeu;->g:Ljava/util/List;

    if-nez v0, :cond_43

    .line 42972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laeu;->g:Ljava/util/List;

    .line 42974
    :cond_43
    iget-object v0, p0, Laeu;->g:Ljava/util/List;

    new-instance v1, Laff;

    invoke-direct {v1, v3}, Laff;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2376
    :cond_44
    const-string v0, "URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2377
    iget-object v0, p0, Laeu;->f:Ljava/util/List;

    if-nez v0, :cond_45

    .line 2378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laeu;->f:Ljava/util/List;

    .line 2380
    :cond_45
    iget-object v0, p0, Laeu;->f:Ljava/util/List;

    new-instance v1, Lafm;

    invoke-direct {v1, v3}, Lafm;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2381
    :cond_46
    const-string v0, "BDAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2382
    new-instance v0, Laex;

    invoke-direct {v0, v3}, Laex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laeu;->h:Laex;

    goto/16 :goto_0

    .line 2383
    :cond_47
    const-string v0, "ANNIVERSARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2384
    new-instance v0, Laew;

    invoke-direct {v0, v3}, Laew;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laeu;->o:Laew;

    goto/16 :goto_0

    .line 2385
    :cond_48
    const-string v0, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2386
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 43120
    iput-object v3, v0, Lafd;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 2387
    :cond_49
    const-string v0, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2388
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 44120
    iput-object v3, v0, Lafd;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 2389
    :cond_4a
    const-string v0, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2390
    iget-object v0, p0, Laeu;->j:Lafd;

    .line 45120
    iput-object v3, v0, Lafd;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 2391
    :cond_4b
    const-string v0, "IMPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2393
    const-string v0, "sip:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2394
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2395
    invoke-direct {p0, v3, v0}, Laeu;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2397
    :cond_4c
    const-string v0, "X-SIP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2398
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2399
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2400
    invoke-direct {p0, v3, v0}, Laeu;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2402
    :cond_4d
    const-string v0, "X-ANDROID-CUSTOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2403
    iget v0, p0, Laeu;->p:I

    invoke-static {v3, v0}, Lafz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 45462
    iget-object v0, p0, Laeu;->n:Ljava/util/List;

    if-nez v0, :cond_4e

    .line 45463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeu;->n:Ljava/util/List;

    .line 45465
    :cond_4e
    iget-object v5, p0, Laeu;->n:Ljava/util/List;

    .line 46450
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_4f

    .line 46451
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46460
    :goto_19
    new-instance v1, Laev;

    invoke-direct {v1, v0, v2}, Laev;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 45466
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 46454
    :cond_4f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_50

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 46456
    :goto_1a
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46457
    invoke-interface {v3, v6, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_19

    .line 46455
    :cond_50
    const/16 v0, 0x10

    move v1, v0

    goto :goto_1a

    :cond_51
    move v0, v4

    goto/16 :goto_18

    :cond_52
    move-object v0, v1

    goto/16 :goto_12

    :cond_53
    move-object v0, v1

    move v1, v2

    goto/16 :goto_e

    :cond_54
    move v5, v4

    move v0, v1

    move-object v1, v2

    goto/16 :goto_f

    :cond_55
    move v6, v0

    goto/16 :goto_c

    :cond_56
    move-object v0, v3

    move v3, v5

    goto/16 :goto_a

    :cond_57
    move-object v3, v2

    move v0, v1

    move v1, v4

    goto/16 :goto_b

    :cond_58
    move v0, v6

    goto/16 :goto_8

    .line 28042
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 29015
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2645
    iget-object v0, p0, Laeu;->j:Lafd;

    iget-object v0, v0, Lafd;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2646
    iget-object v0, p0, Laeu;->j:Lafd;

    invoke-direct {p0}, Laeu;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lafd;->k:Ljava/lang/String;

    .line 2648
    :cond_0
    iget-object v0, p0, Laeu;->j:Lafd;

    iget-object v0, v0, Lafd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1747
    new-instance v0, Lafl;

    .line 2661
    invoke-direct {v0, p0}, Lafl;-><init>(Laeu;)V

    .line 3585
    invoke-interface {v0}, Lafa;->a()V

    .line 4259
    sget-object v1, Lafb;->a:Lafb;

    .line 3586
    invoke-interface {v0, v1}, Lafa;->a(Lafb;)V

    .line 3587
    iget-object v1, p0, Laeu;->j:Lafd;

    invoke-interface {v0, v1}, Lafa;->a(Laez;)Z

    .line 3588
    invoke-interface {v0}, Lafa;->c()V

    .line 3590
    iget-object v1, p0, Laeu;->a:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3591
    iget-object v1, p0, Laeu;->b:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3592
    iget-object v1, p0, Laeu;->c:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3593
    iget-object v1, p0, Laeu;->d:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3594
    iget-object v1, p0, Laeu;->e:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3595
    iget-object v1, p0, Laeu;->k:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3596
    iget-object v1, p0, Laeu;->f:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3597
    iget-object v1, p0, Laeu;->l:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3598
    iget-object v1, p0, Laeu;->m:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3599
    iget-object v1, p0, Laeu;->g:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3600
    iget-object v1, p0, Laeu;->n:Ljava/util/List;

    invoke-static {v1, v0}, Laeu;->a(Ljava/util/List;Lafa;)V

    .line 3602
    iget-object v1, p0, Laeu;->h:Laex;

    if-eqz v1, :cond_0

    .line 3603
    iget-object v1, p0, Laeu;->h:Laex;

    invoke-virtual {v1}, Laex;->a()Lafb;

    move-result-object v1

    invoke-interface {v0, v1}, Lafa;->a(Lafb;)V

    .line 3604
    iget-object v1, p0, Laeu;->h:Laex;

    invoke-interface {v0, v1}, Lafa;->a(Laez;)Z

    .line 3605
    invoke-interface {v0}, Lafa;->c()V

    .line 3607
    :cond_0
    iget-object v1, p0, Laeu;->o:Laew;

    if-eqz v1, :cond_1

    .line 3608
    iget-object v1, p0, Laeu;->o:Laew;

    invoke-virtual {v1}, Laew;->a()Lafb;

    move-result-object v1

    invoke-interface {v0, v1}, Lafa;->a(Lafb;)V

    .line 3609
    iget-object v1, p0, Laeu;->o:Laew;

    invoke-interface {v0, v1}, Lafa;->a(Laez;)Z

    .line 3610
    invoke-interface {v0}, Lafa;->c()V

    .line 3612
    :cond_1
    invoke-interface {v0}, Lafa;->b()V

    .line 1749
    invoke-virtual {v0}, Lafl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
