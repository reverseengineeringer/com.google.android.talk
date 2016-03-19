.class public Lbff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqf;
.implements Liaw;


# static fields
.field public static final a:Z


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lezi;->d:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lbff;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lbff;->b:Landroid/content/Context;

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;J)J
    .locals 3

    .prologue
    .line 1346
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbfd;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 606
    const-string v0, "SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 611
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 612
    invoke-interface {v0, p1, p2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 613
    if-eqz v1, :cond_0

    .line 620
    invoke-interface {v0, v2}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "gaia_id"

    const-string v2, "_sms_only_account"

    .line 621
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "chat_id"

    const-string v2, "_sms_only_account"

    .line 622
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "sms_only"

    .line 623
    invoke-virtual {v0, v1, v3}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    const-string v1, "is_managed_account"

    .line 624
    invoke-virtual {v0, v1, v3}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lhqc;->d()I

    .line 5140
    :cond_0
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpz;

    .line 5141
    const-class v0, Lawo;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lawo;

    .line 5142
    const-class v0, Leot;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leot;

    .line 5143
    new-instance v0, Lbfd;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbfd;-><init>(Lhpz;Lawo;Leot;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lczb;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 153
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    const-string v2, "gaia_id"

    invoke-interface {v0, v2, v1}, Lhqb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    const-string v3, "chat_id"

    invoke-interface {v0, v3, v1}, Lhqb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 158
    :cond_0
    new-instance v0, Lczb;

    invoke-direct {v0, v2, v3}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2135
    const-string v0, "accounts"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    const-string v3, ".logged_in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p0}, Laal;->d(Landroid/content/Context;)Ljava/io/File;

    .line 183
    return-object v1
.end method

.method public static a(Lhqb;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhqb;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldkc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    const-string v0, "phone_verification"

    invoke-interface {p0, v0}, Lhqb;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1225
    new-instance v1, Lhq;

    invoke-direct {v1}, Lhq;-><init>()V

    .line 1226
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1237
    :goto_0
    return-object v0

    .line 1230
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1231
    invoke-static {v0}, Ldkc;->a(Ljava/lang/String;)Ldkc;

    move-result-object v0

    .line 1232
    if-eqz v0, :cond_2

    .line 1233
    invoke-virtual {v0}, Ldkc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1237
    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldkc;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    :cond_0
    const/4 v0, 0x0

    .line 1251
    :goto_0
    return-object v0

    .line 1246
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1247
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 1248
    invoke-virtual {v0}, Ldkc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1251
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 1334
    const-class v0, Lhpz;

    .line 1335
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    .line 1336
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, p2, v4, v5}, Lhqc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, p2, v2, v3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 1337
    return-void
.end method

.method public static a(Landroid/content/Context;Lbfd;)V
    .locals 3

    .prologue
    .line 853
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 854
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "diagnostics_promo_shown"

    const/4 v2, 0x1

    .line 855
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lhqc;->d()I

    .line 857
    return-void
.end method

.method public static a(Landroid/content/Context;Lbfd;J)V
    .locals 2

    .prologue
    .line 1110
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1111
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "registration_time"

    .line 1112
    invoke-virtual {v0, v1, p2, p3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Lhqc;->d()I

    .line 1114
    return-void
.end method

.method public static a(Landroid/content/Context;Lbfd;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 919
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xe

    .line 918
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IIZ)I

    .line 920
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 921
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "gv_sms_integration_shown"

    .line 922
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Lhqc;->d()I

    .line 924
    invoke-static {p0, p1, p2}, Lbff;->b(Landroid/content/Context;Lbfd;Z)V

    .line 925
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 9135
    const-string v0, "accounts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1259
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1260
    const-string v1, "referrer_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1262
    return-void
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 281
    array-length v0, p1

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbfg;

    invoke-direct {v1, p1, p0}, Lbfg;-><init>([Ljava/lang/Integer;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 294
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static a(Lhqc;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 1365
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    .line 1366
    return-void
.end method

.method public static a(Lhqe;Lczb;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lbfe;[Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhqe;",
            "Lczb;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldkc;",
            ">;",
            "Lbfe;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 646
    if-eqz p1, :cond_1

    iget-object v0, p1, Lczb;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 647
    const-string v0, "gaia_id"

    iget-object v2, p1, Lczb;->a:Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 651
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lczb;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 652
    const-string v0, "chat_id"

    iget-object v2, p1, Lczb;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 656
    :goto_1
    const-string v0, "display_name"

    invoke-interface {p0, v0, p2}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 657
    const-string v0, "is_google_plus"

    invoke-interface {p0, v0, p3}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 658
    const-string v0, "domain_name"

    invoke-interface {p0, v0, p4}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 659
    const-string v0, "show_chat_warning"

    invoke-interface {p0, v0, p9}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 660
    if-eqz p8, :cond_8

    array-length v0, p8

    if-lez v0, :cond_8

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 662
    :goto_2
    array-length v3, p8

    if-ge v0, v3, :cond_3

    .line 663
    if-lez v0, :cond_0

    .line 664
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_0
    aget-object v3, p8, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 649
    :cond_1
    const-string v0, "gaia_id"

    invoke-interface {p0, v0}, Lhqe;->i(Ljava/lang/String;)Lhqe;

    goto :goto_0

    .line 654
    :cond_2
    const-string v0, "chat_id"

    invoke-interface {p0, v0}, Lhqe;->i(Ljava/lang/String;)Lhqe;

    goto :goto_1

    .line 668
    :cond_3
    const-string v0, "plus_page_gaia_ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 672
    :goto_3
    const-string v0, "profile_photo_url"

    invoke-interface {p0, v0, p5}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 673
    if-eqz p6, :cond_4

    .line 674
    const-string v0, "phone_verification"

    .line 675
    invoke-static {p6}, Lbff;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 674
    invoke-interface {p0, v0, v2}, Lhqe;->b(Ljava/lang/String;Ljava/util/Set;)Lhqe;

    .line 677
    :cond_4
    if-eqz p7, :cond_7

    .line 678
    const-string v0, "allowed_for_domain"

    iget-boolean v2, p7, Lbfe;->c:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 679
    const-string v0, "blocked_for_child"

    iget-boolean v2, p7, Lbfe;->d:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 680
    const-string v0, "business_features_promo_shown"

    iget-boolean v2, p7, Lbfe;->n:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 682
    const-string v0, "can_opt_into_gv_sms_integration"

    iget-boolean v2, p7, Lbfe;->f:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 684
    const-string v0, "chat_archive_enabled"

    iget-boolean v2, p7, Lbfe;->e:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 685
    const-string v0, "gplus_dismissed"

    iget-boolean v2, p7, Lbfe;->b:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 686
    const-string v0, "gv_sms_integration_shown"

    iget-boolean v2, p7, Lbfe;->g:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 687
    const-string v0, "is_business_features_eligible"

    iget-boolean v2, p7, Lbfe;->l:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 689
    const-string v0, "is_business_features_enabled"

    iget-boolean v2, p7, Lbfe;->m:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 691
    const-string v0, "account_age_group"

    iget v2, p7, Lbfe;->a:I

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;I)Lhqe;

    .line 692
    const-string v0, "is_gv_sms_integration_enabled"

    iget-boolean v2, p7, Lbfe;->h:Z

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 695
    iget-object v0, p7, Lbfe;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 696
    const-string v0, "default_gmail_phone_region_code"

    iget-object v2, p7, Lbfe;->u:Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 699
    :cond_5
    iget-object v0, p7, Lbfe;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 700
    const-string v0, "default_gmail_phone_country_code"

    iget-object v2, p7, Lbfe;->v:Ljava/lang/Integer;

    .line 6043
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 700
    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;I)Lhqe;

    .line 704
    :cond_6
    const-string v0, "paid_dasher_user"

    iget-boolean v1, p7, Lbfe;->i:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 705
    const-string v0, "is_history_forced"

    iget-boolean v1, p7, Lbfe;->j:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 706
    const-string v0, "is_history_default_on"

    iget-boolean v1, p7, Lbfe;->k:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 707
    const-string v0, "last_seen_promo_shown"

    iget-boolean v1, p7, Lbfe;->o:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 708
    const-string v0, "phone_verification_prompt_shown"

    iget-boolean v1, p7, Lbfe;->p:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 710
    const-string v0, "abuse_reporting_tos_shown"

    iget-boolean v1, p7, Lbfe;->q:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 711
    const-string v0, "gv_can_use_caller_id_feature"

    iget-boolean v1, p7, Lbfe;->r:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 713
    const-string v0, "is_photo_service_enabled"

    iget-boolean v1, p7, Lbfe;->s:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 714
    const-string v0, "invite_notifications_enabled"

    iget-boolean v1, p7, Lbfe;->t:Z

    invoke-interface {p0, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 717
    :cond_7
    return-void

    .line 670
    :cond_8
    const-string v0, "plus_page_gaia_ids"

    invoke-interface {p0, v0}, Lhqe;->i(Ljava/lang/String;)Lhqe;

    goto/16 :goto_3
.end method

.method private static a(Landroid/content/SharedPreferences;)[Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    const-string v1, "count"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v1, v0

    .line 219
    :goto_0
    if-ge v1, v3, :cond_4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "account_name"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "gaia_id"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v4, 0x0

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lhqb;
    .locals 2

    .prologue
    .line 774
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 775
    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    const/4 v0, 0x0

    .line 778
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6135
    const-string v0, "accounts"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 819
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "warning_is_displayed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 820
    return-void
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1341
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 1342
    return-void
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 1351
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 1352
    return-void
.end method

.method public static b(Landroid/content/Context;Lbfd;J)V
    .locals 2

    .prologue
    .line 1189
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1190
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "sticker_cache_time"

    .line 1191
    invoke-virtual {v0, v1, p2, p3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 1192
    invoke-virtual {v0}, Lhqc;->d()I

    .line 1193
    return-void
.end method

.method public static b(Landroid/content/Context;Lbfd;Z)V
    .locals 3

    .prologue
    .line 934
    sget-boolean v0, Lbff;->a:Z

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setGvSmsIntegration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gvEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 943
    :cond_0
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0xd

    .line 942
    invoke-static {v0, v1, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IIZ)I

    .line 946
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 947
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "is_gv_sms_integration_enabled"

    .line 948
    invoke-virtual {v0, v1, p2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Lhqc;->d()I

    .line 950
    if-nez p2, :cond_1

    .line 954
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 955
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "can_opt_into_gv_sms_integration"

    const/4 v2, 0x1

    .line 956
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Lhqc;->d()I

    .line 959
    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;Lbfd;)Z
    .locals 3

    .prologue
    .line 863
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 864
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "diagnostics_promo_shown"

    const/4 v2, 0x0

    .line 865
    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 782
    invoke-static {p0, p1}, Lbff;->b(Landroid/content/Context;I)Lhqb;

    move-result-object v0

    .line 783
    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 786
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "gaia_id"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 7135
    const-string v0, "accounts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 874
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_tos_accepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 875
    return-void
.end method

.method public static c(Landroid/content/Context;Lbfd;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 997
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x10

    .line 996
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IIZ)I

    .line 998
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 999
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "business_features_promo_shown"

    .line 1000
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 1001
    invoke-virtual {v0}, Lhqc;->d()I

    .line 1002
    return-void
.end method

.method public static c(Landroid/content/Context;Lbfd;Z)V
    .locals 2

    .prologue
    .line 980
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x11

    .line 979
    invoke-static {v0, v1, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IIZ)I

    .line 981
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 982
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "is_business_features_enabled"

    .line 983
    invoke-virtual {v0, v1, p2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lhqc;->d()I

    .line 985
    return-void
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)[B
    .locals 2

    .prologue
    .line 1356
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    invoke-interface {v0, p2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1358
    const/4 v0, 0x0

    .line 1360
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;I)Lczb;
    .locals 4

    .prologue
    .line 790
    invoke-static {p0, p1}, Lbff;->b(Landroid/content/Context;I)Lhqb;

    move-result-object v1

    .line 791
    if-nez v1, :cond_0

    .line 792
    const/4 v0, 0x0

    .line 794
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lczb;

    const-string v2, "gaia_id"

    invoke-interface {v1, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-interface {v1, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lbfd;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1014
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    const/16 v1, 0x1b

    .line 1013
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IIZ)I

    .line 1017
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1018
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "phone_verification_prompt_shown"

    .line 1019
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lhqc;->d()I

    .line 1021
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8135
    const-string v0, "accounts"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 881
    const-string v1, "location_tos_accepted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 10135
    const-string v0, "accounts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1268
    const-string v1, "referrer_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Lbfd;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1069
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1071
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "is_sms_account"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lhpz;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1072
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 9043
    invoke-static {v1, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1074
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 1079
    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v1

    const-string v3, "is_sms_account"

    .line 1080
    invoke-virtual {v1, v3, v4}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v1

    .line 1081
    invoke-virtual {v1}, Lhqc;->d()I

    goto :goto_0

    .line 1085
    :cond_1
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "is_sms_account"

    .line 1086
    invoke-virtual {v0, v1, v5}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Lhqc;->d()I

    .line 1088
    return-void
.end method

.method public static e(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 962
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 963
    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 968
    :goto_0
    return v0

    .line 966
    :cond_0
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 967
    const-string v2, "effective_gaia_id"

    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "is_business_features_enabled"

    .line 968
    invoke-interface {v0, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Lbfd;)J
    .locals 4

    .prologue
    .line 1097
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1098
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "registration_time"

    const-wide/16 v2, -0x1

    .line 1099
    invoke-interface {v0, v1, v2, v3}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 1045
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Lbfd;)J
    .locals 4

    .prologue
    .line 1151
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1152
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "setting_time"

    const-wide/16 v2, -0x1

    .line 1153
    invoke-interface {v0, v1, v2, v3}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    .line 1055
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1056
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "logged_out"

    .line 1057
    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;Lbfd;)V
    .locals 4

    .prologue
    .line 1164
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1165
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "setting_time"

    const-wide/16 v2, -0x1

    .line 1166
    invoke-virtual {v0, v1, v2, v3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Lhqc;->d()I

    .line 1168
    return-void
.end method

.method public static h(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    .line 1202
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1203
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "contact_permission_banner_shown"

    const/4 v2, 0x0

    .line 1204
    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;Lbfd;)J
    .locals 4

    .prologue
    .line 1177
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1178
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "sticker_cache_time"

    const-wide/16 v2, -0x1

    .line 1179
    invoke-interface {v0, v1, v2, v3}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 1215
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1216
    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "contact_permission_banner_shown"

    const/4 v2, 0x1

    .line 1217
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 1218
    invoke-virtual {v0}, Lhqc;->d()I

    .line 1219
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 544
    iget-object v0, p0, Lbff;->b:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    .line 545
    const-string v0, "logged_out"

    invoke-interface {v1, v0}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lbff;->b:Landroid/content/Context;

    const-class v2, Lcyh;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    invoke-interface {v0, p1}, Lcyh;->e(I)V

    .line 551
    const-string v0, "sms_only"

    invoke-interface {v1, v0}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Account update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " logged off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lbff;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lbgw;->b(Landroid/content/Context;I)V

    .line 562
    iget-object v0, p0, Lbff;->b:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 563
    invoke-interface {v0, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const/4 v1, 0x3

    .line 564
    invoke-static {v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const/4 v1, 0x1

    .line 565
    invoke-static {v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const/4 v1, 0x2

    .line 566
    invoke-static {v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const/4 v1, 0x5

    .line 567
    invoke-static {v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const/4 v1, 0x4

    .line 568
    invoke-static {v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "last_invite_seen_timestamp"

    .line 569
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "last_suggested_contacts_time"

    .line 570
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "sms_last_full_sync_time_millis"

    .line 571
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "refresh_participants_time"

    .line 572
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "last_warm_sync_localtime"

    .line 573
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "last_successful_sync_time"

    .line 574
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "sms_last_sync_time_millis"

    .line 575
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "hash_pinned"

    .line 576
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "hash_favorites"

    .line 577
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "hash_people_you_hangout_with"

    .line 578
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "hash_other_people_on_hangout"

    .line 579
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    const-string v1, "hash_dismissed_contacts"

    .line 580
    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lhqc;->d()I

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    const-string v0, "logged_in"

    invoke-interface {v1, v0}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Lbfd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v2, "Babel"

    const-string v3, "activateAccount: "

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    iget-object v0, p0, Lbff;->b:Landroid/content/Context;

    .line 591
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-static {v0, v1}, Lbgw;->a(Landroid/content/Context;I)Lbgw;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lbgw;->c()V

    goto :goto_0

    .line 589
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lhqe;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 308
    const-string v0, "SMS"

    const-string v2, "account_name"

    invoke-interface {p2, v2}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3135
    const-string v0, "accounts"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 311
    const-string v0, "count"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v1

    .line 312
    :goto_0
    if-ge v0, v3, :cond_0

    .line 313
    const-string v4, "account_name"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    if-eqz v4, :cond_1

    const-string v5, "SMS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    const-string v3, "is_sms_account"

    const-string v4, "is_sms_account"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 315
    invoke-interface {p2, v3, v0}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 323
    :cond_0
    return-void

    .line 312
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhqh;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v3, p0, Lbff;->b:Landroid/content/Context;

    .line 4135
    const-string v0, "accounts"

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4193
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4194
    const-string v0, "count"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v2, v1

    .line 4195
    :goto_0
    if-ge v2, v6, :cond_2

    .line 4196
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4197
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "account_name"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4199
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x16

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".logged_off"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "SMS"

    .line 4200
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4195
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 4197
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4204
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 3244
    invoke-static {v3, v0}, Lbff;->a(Landroid/content/Context;[Ljava/lang/Integer;)V

    .line 3252
    const-string v0, "active"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3254
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key.active-hangouts-account"

    const-string v5, "active"

    const/4 v6, -0x1

    .line 3255
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "active"

    .line 3256
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3263
    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3264
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 3265
    invoke-static {v4}, Lbff;->a(Landroid/content/SharedPreferences;)[Ljava/lang/Integer;

    move-result-object v4

    .line 3266
    array-length v6, v4

    :goto_2
    if-ge v1, v6, :cond_6

    aget-object v0, v4, v1

    .line 3267
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3268
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3270
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3271
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 3266
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 3275
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3277
    invoke-static {v3, v4}, Lbff;->a(Landroid/content/Context;[Ljava/lang/Integer;)V

    .line 342
    new-instance v0, Lbfh;

    invoke-direct {v0, p0}, Lbfh;-><init>(Lbff;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v0, Lbfi;

    invoke-direct {v0, p0}, Lbfi;-><init>(Lbff;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v0, Lbfj;

    invoke-direct {v0, p0}, Lbfj;-><init>(Lbff;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v0, Lbfk;

    invoke-direct {v0, p0}, Lbfk;-><init>(Lbff;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v0, Lbfl;

    invoke-direct {v0, p0}, Lbfl;-><init>(Lbff;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v0, Lbfm;

    invoke-direct {v0, p0}, Lbfm;-><init>(Lbff;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v0, Lbfn;

    invoke-direct {v0, p0}, Lbfn;-><init>(Lbff;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method
