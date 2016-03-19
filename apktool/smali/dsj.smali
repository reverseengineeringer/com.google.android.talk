.class public Ldsj;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:J

.field private final i:[Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private final k:[Ljava/lang/String;

.field private final l:[Ljava/lang/String;

.field private final m:[B

.field private n:Z

.field private final o:J


# direct methods
.method private constructor <init>(Lkdx;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 892
    iget-object v0, p1, Lkdx;->responseHeader:Lkdp;

    iget-object v1, p1, Lkdx;->c:Ljzl;

    iget-object v1, v1, Ljzl;->c:Ljava/lang/Long;

    .line 2051
    invoke-static {v1, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 892
    invoke-direct {p0, v0, v4, v5}, Ldqf;-><init>(Lkdp;J)V

    .line 894
    iget-object v0, p1, Lkdx;->c:Ljzl;

    iget-object v0, v0, Ljzl;->d:Ljava/lang/String;

    iput-object v0, p0, Ldsj;->g:Ljava/lang/String;

    .line 895
    iget-object v0, p1, Lkdx;->c:Ljzl;

    iget-object v0, v0, Ljzl;->o:Ljava/lang/Long;

    .line 3051
    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 895
    iput-wide v0, p0, Ldsj;->h:J

    .line 897
    iget-object v0, p1, Lkdx;->b:[Lkcb;

    array-length v4, v0

    .line 898
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Ldsj;->j:[Ljava/lang/String;

    .line 899
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Ldsj;->k:[Ljava/lang/String;

    .line 900
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Ldsj;->l:[Ljava/lang/String;

    .line 901
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Ldsj;->i:[Ljava/lang/String;

    .line 902
    iget-object v0, p1, Lkdx;->responseHeader:Lkdp;

    iget-object v0, v0, Lkdp;->d:Ljava/lang/Long;

    .line 4051
    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 902
    iput-wide v0, p0, Ldsj;->o:J

    .line 905
    iget-object v0, p1, Lkdx;->c:Ljzl;

    iget-object v0, v0, Ljzl;->e:Ljzm;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lkdx;->c:Ljzl;

    iget-object v0, v0, Ljzl;->e:Ljzm;

    iget-object v0, v0, Ljzm;->d:Lkfi;

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p1, Lkdx;->c:Ljzl;

    iget-object v0, v0, Ljzl;->e:Ljzm;

    iget-object v0, v0, Ljzm;->d:Lkfi;

    invoke-static {v0}, Llyi;->a(Llyi;)[B

    move-result-object v0

    iput-object v0, p0, Ldsj;->m:[B

    :goto_0
    move v3, v2

    .line 912
    :goto_1
    if-ge v3, v4, :cond_3

    .line 913
    iget-object v0, p1, Lkdx;->b:[Lkcb;

    aget-object v0, v0, v3

    iget-object v0, v0, Lkcb;->a:Lmed;

    .line 914
    iget-object v0, v0, Lmed;->a:Llyt;

    .line 915
    sget-object v1, Lmap;->a:Llyc;

    invoke-virtual {v0, v1}, Llyt;->b(Llyc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmap;

    .line 916
    iget-object v1, p0, Ldsj;->j:[Ljava/lang/String;

    iget-object v5, v0, Lmap;->f:Ljava/lang/String;

    aput-object v5, v1, v3

    .line 917
    iget-object v1, p0, Ldsj;->k:[Ljava/lang/String;

    iget-object v5, v0, Lmap;->e:Ljava/lang/String;

    aput-object v5, v1, v3

    .line 918
    iget-object v1, p0, Ldsj;->l:[Ljava/lang/String;

    iget-object v5, v0, Lmap;->i:Ljava/lang/String;

    aput-object v5, v1, v3

    .line 921
    iget-object v1, v0, Lmap;->g:[Ljava/lang/String;

    array-length v5, v1

    move v1, v2

    .line 922
    :goto_2
    if-ge v1, v5, :cond_0

    .line 923
    iget-object v6, v0, Lmap;->g:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 924
    const-string v7, "BABEL_UNIQUE_ID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 925
    iget-object v0, p0, Ldsj;->i:[Ljava/lang/String;

    aput-object v6, v0, v3

    .line 912
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 910
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldsj;->m:[B

    goto :goto_0

    .line 922
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4232
    :cond_3
    sget-boolean v0, Ldqf;->a:Z

    .line 930
    if-eqz v0, :cond_4

    .line 931
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SendChatMessageResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    :cond_4
    return-void
.end method

.method public static parseFrom(Lkdx;)Ldqf;
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lkdx;->responseHeader:Lkdp;

    invoke-static {v0}, Ldsj;->a(Lkdp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    new-instance v0, Ldqs;

    iget-object v1, p0, Lkdx;->responseHeader:Lkdp;

    invoke-direct {v0, v1}, Ldqs;-><init>(Lkdp;)V

    .line 946
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldsj;

    invoke-direct {v0, p0}, Ldsj;-><init>(Lkdx;)V

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 937
    new-instance v0, Lkdx;

    invoke-direct {v0}, Lkdx;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 938
    check-cast v0, Lkdx;

    .line 939
    invoke-static {v0}, Ldsj;->parseFrom(Lkdx;)Ldqf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 14

    .prologue
    .line 956
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 957
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 958
    invoke-virtual {p0}, Ldsj;->k()Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-virtual {p0}, Ldsj;->l()Ljava/lang/String;

    move-result-object v9

    .line 5232
    sget-boolean v0, Ldqf;->a:Z

    .line 961
    if-eqz v0, :cond_3

    .line 962
    iget-object v0, p0, Ldsj;->g:Ljava/lang/String;

    iget-wide v2, p0, Ldsj;->d:J

    iget-object v4, p0, Ldsj;->j:[Ljava/lang/String;

    array-length v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x9d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "processSendChatMessageResponse Conversation id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", messageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", messageTimestamp: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", messageClientGeneratedId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mediaId count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 967
    iget-object v2, p0, Ldsj;->j:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 968
    const-string v5, "  photoId "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 967
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 970
    :cond_1
    iget-object v2, p0, Ldsj;->k:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 971
    const-string v5, "  albumId "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 970
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 971
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 6232
    :cond_3
    sget-boolean v0, Ldqf;->a:Z

    .line 975
    if-eqz v0, :cond_4

    .line 976
    invoke-virtual {p0}, Ldsj;->m()Ljava/lang/String;

    move-result-object v0

    .line 977
    if-eqz v0, :cond_4

    .line 978
    const-string v2, "Stress message sent successful update message state:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 983
    :cond_4
    :goto_4
    invoke-virtual {p1}, Lbfz;->a()V

    .line 984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 993
    :try_start_0
    invoke-virtual {p1, v1, v9}, Lbfz;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_9

    move-object v8, v0

    .line 998
    :goto_5
    if-nez v8, :cond_a

    .line 999
    const-string v0, "Babel"

    const-string v2, "Received SendChatMessageResponse for nonexistant  clientGeneratedId  = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-virtual {p0}, Ldsj;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " /  eventId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 999
    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    :goto_6
    iget-object v0, p0, Ldsj;->m:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 1025
    :try_start_1
    new-instance v0, Lkfi;

    invoke-direct {v0}, Lkfi;-><init>()V

    iget-object v2, p0, Ldsj;->m:[B

    .line 12131
    array-length v3, v2

    invoke-static {v0, v2, v3}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1026
    check-cast v0, Lkfi;

    iget-object v0, v0, Lkfi;->a:[Lkfg;

    .line 1027
    iget-object v2, p0, Ldsj;->g:Ljava/lang/String;

    iget-wide v3, p0, Ldsj;->d:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ledn;->a([Lkfg;Ljava/lang/String;Ljava/lang/String;JLbfz;)V
    :try_end_1
    .catch Llyg; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1037
    :cond_5
    :goto_7
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1038
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 13219
    new-instance v4, Lcsn;

    .line 14040
    invoke-direct {v4}, Lcsn;-><init>()V

    .line 13090
    invoke-virtual {v4, v9}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 13091
    invoke-virtual {v4, v1}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v1

    .line 13092
    const/16 v4, 0xa

    const/16 v5, 0xcc

    .line 13096
    invoke-virtual {v1, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    .line 13092
    invoke-static {v0, v10, v11, v4, v5}, Laen;->a(IJILcsn;)V

    .line 13097
    const/16 v4, 0xa

    const/16 v5, 0x67

    .line 13101
    invoke-virtual {v1, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    .line 13097
    invoke-static {v0, v12, v13, v4, v5}, Laen;->a(IJILcsn;)V

    .line 13102
    const/16 v4, 0xd

    const/4 v5, 0x0

    .line 13106
    invoke-virtual {v1, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v1

    .line 13102
    invoke-static {v0, v2, v3, v4, v1}, Laen;->a(IJILcsn;)V

    .line 1042
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1044
    invoke-virtual {p1}, Lbfz;->c()V

    .line 14232
    sget-boolean v0, Ldqf;->a:Z

    .line 1045
    if-eqz v0, :cond_f

    .line 1046
    invoke-virtual {p1}, Lbfz;->e()Lbha;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    const-string v3, "message_id=? OR message_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1052
    invoke-virtual {p0}, Ldsj;->l()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1053
    invoke-virtual {p0}, Ldsj;->o()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 1046
    invoke-virtual/range {v0 .. v5}, Lbha;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1059
    const-string v0, "SendChatMessage.processResponse after endTransaction  cursor count is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1061
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1063
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v4, :cond_d

    aget-object v5, v3, v1

    .line 1064
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1066
    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 978
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 996
    :cond_9
    :try_start_3
    invoke-virtual {p0}, Ldsj;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lbfz;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_5

    .line 7051
    :cond_a
    const-wide/16 v2, 0x0

    invoke-static {v8, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1005
    iget-wide v4, p0, Ldsj;->d:J

    .line 1006
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 8051
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1006
    iget-wide v6, p0, Ldsj;->h:J

    .line 1007
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 9051
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    move-object v0, p1

    .line 1003
    invoke-virtual/range {v0 .. v7}, Lbfz;->a(Ljava/lang/String;JJJ)V

    .line 1009
    iget-wide v2, p0, Ldsj;->d:J

    .line 1011
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 10051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 11051
    const-wide/16 v4, 0x0

    invoke-static {v8, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    move-object v0, p1

    .line 1009
    invoke-virtual/range {v0 .. v5}, Lbfz;->a(Ljava/lang/String;JJ)V

    .line 1014
    invoke-virtual {p1, p0}, Lbfz;->a(Ldsj;)V

    .line 1017
    iget-wide v2, p0, Ldsj;->d:J

    .line 1019
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 12051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1017
    invoke-virtual {p1, v1, v2, v3}, Lbfz;->h(Ljava/lang/String;J)V

    .line 1020
    invoke-static {p1, v1}, Lbft;->d(Lbfz;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    .line 1044
    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {p1}, Lbfz;->c()V

    .line 15232
    sget-boolean v0, Ldqf;->a:Z

    .line 1045
    if-eqz v0, :cond_13

    .line 1046
    invoke-virtual {p1}, Lbfz;->e()Lbha;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    const-string v3, "message_id=? OR message_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1052
    invoke-virtual {p0}, Ldsj;->l()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    .line 1053
    invoke-virtual {p0}, Ldsj;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 1046
    invoke-virtual/range {v0 .. v5}, Lbha;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1059
    const-string v0, "SendChatMessage.processResponse after endTransaction  cursor count is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1061
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1063
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v4, :cond_11

    aget-object v5, v3, v1

    .line 1064
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string v7, "text"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1066
    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ==> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1030
    :catch_0
    move-exception v0

    :try_start_4
    const-string v0, "Babel"

    const-string v2, "Invalid ClientSuggestions protobuf parsed from ClientSendChatMessageResponse. This happening likely means a corrupt response proto has been received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    .line 1070
    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1072
    :cond_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1076
    :cond_f
    invoke-virtual {p0}, Ldsj;->n()Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 16036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1078
    const-class v2, Lbcm;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    .line 1079
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    .line 17021
    new-instance v3, Lcto;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Lcto;-><init>(ILjava/lang/String;Z)V

    .line 1079
    invoke-interface {v0, v3}, Lbcm;->a(Lbcn;)Lbcg;

    .line 17036
    :cond_10
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1082
    const-class v1, Lcyh;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 1083
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcyh;->c(I)V

    .line 1084
    return-void

    .line 1070
    :cond_11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1072
    :cond_12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1073
    :cond_13
    throw v6
.end method

.method public a(Leff;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1181
    invoke-super {p0, p1}, Ldqf;->a(Leff;)V

    .line 1182
    instance-of v0, p1, Ldpo;

    if-eqz v0, :cond_2

    .line 1183
    check-cast p1, Ldpo;

    .line 1184
    iget-object v0, p1, Ldpo;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Ldpo;->m:Ljava/lang/String;

    .line 17084
    invoke-static {v0}, Laal;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1185
    if-eqz v0, :cond_1

    const-string v0, "image/gif"

    iget-object v3, p1, Ldpo;->m:Ljava/lang/String;

    .line 1186
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ldsj;->n:Z

    .line 1197
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1186
    goto :goto_0

    .line 1187
    :cond_2
    instance-of v0, p1, Lbvx;

    if-eqz v0, :cond_0

    .line 1188
    check-cast p1, Lbvx;

    .line 1190
    invoke-virtual {p1}, Lbvx;->g()Lksf;

    move-result-object v3

    .line 1191
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    iget-object v0, v0, Lbkq;->c:Lbkr;

    sget-object v4, Lbkr;->b:Lbkr;

    if-ne v0, v4, :cond_3

    .line 1193
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    iget-object v0, v0, Lbkq;->d:Ljava/lang/String;

    .line 18084
    invoke-static {v0}, Laal;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1193
    if-eqz v0, :cond_3

    const-string v4, "image/gif"

    .line 1194
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    iget-object v0, v0, Lbkq;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Ldsj;->n:Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Ldpo;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Ldpo;

    iget-object v0, v0, Ldpo;->c:Ljava/lang/String;

    .line 1117
    :goto_0
    return-object v0

    .line 1114
    :cond_0
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Lbvx;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Ldpo;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Ldpo;

    iget-object v0, v0, Ldpo;->j:Ljava/lang/String;

    .line 1127
    :goto_0
    return-object v0

    .line 1124
    :cond_0
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Lbvx;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Ldpo;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Ldpo;

    invoke-virtual {v0}, Ldpo;->e()Ljava/lang/String;

    move-result-object v0

    .line 1137
    :goto_0
    return-object v0

    .line 1134
    :cond_0
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Lbvx;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Ldpo;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Ldpo;

    iget-object v0, v0, Ldpo;->a:Ljava/lang/String;

    .line 1147
    :goto_0
    return-object v0

    .line 1144
    :cond_0
    iget-object v0, p0, Ldsj;->b:Leff;

    instance-of v0, v0, Lbvx;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Ldsj;->b:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Ldsj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 1156
    iget-wide v0, p0, Ldsj;->h:J

    return-wide v0
.end method

.method public q()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Ldsj;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public r()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Ldsj;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public s()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Ldsj;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public t()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Ldsj;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 1176
    iget-boolean v0, p0, Ldsj;->n:Z

    return v0
.end method
