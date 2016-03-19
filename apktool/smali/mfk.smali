.class public final Lmfk;
.super Llvy;
.source "SourceFile"

# interfaces
.implements Llwr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llvy",
        "<",
        "Lmfk;",
        "Llwa;",
        ">;",
        "Llwr;"
    }
.end annotation


# static fields
.field public static final d:Lmfk;

.field private static volatile i:Llwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwt",
            "<",
            "Lmfk;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private e:I

.field private f:J

.field private g:Ljava/lang/String;

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1191
    new-instance v0, Lmfk;

    sget-object v1, Llwg;->e:Llvp;

    .line 5069
    sget-object v2, Llvt;->a:Llvt;

    .line 1195
    invoke-direct {v0, v1}, Lmfk;-><init>(Llvp;)V

    sput-object v0, Lmfk;->d:Lmfk;

    .line 1196
    return-void
.end method

.method private constructor <init>(Llvp;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 819
    invoke-direct {p0}, Llvy;-><init>()V

    .line 1121
    const/4 v0, -0x1

    iput-byte v0, p0, Lmfk;->h:B

    .line 820
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmfk;->f:J

    .line 821
    const-string v0, ""

    iput-object v0, p0, Lmfk;->g:Ljava/lang/String;

    .line 823
    const/4 v0, 0x0

    .line 824
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 825
    :try_start_0
    invoke-virtual {p1}, Llvp;->a()I

    move-result v2

    .line 826
    sparse-switch v2, :sswitch_data_0

    .line 831
    invoke-virtual {p0, v2, p1}, Lmfk;->a(ILlvp;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 832
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 829
    goto :goto_0

    .line 837
    :sswitch_1
    iget v2, p0, Lmfk;->e:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmfk;->e:I

    .line 838
    invoke-virtual {p1}, Llvp;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lmfk;->f:J
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lmfk;->e()V

    throw v0

    .line 842
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Llvp;->j()Ljava/lang/String;

    move-result-object v2

    .line 843
    iget v3, p0, Lmfk;->e:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmfk;->e:I

    .line 844
    iput-object v2, p0, Lmfk;->g:Ljava/lang/String;
    :try_end_2
    .catch Llwk; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 851
    :catch_1
    move-exception v0

    .line 852
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Llwk;

    .line 854
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Llwk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 856
    :cond_1
    invoke-virtual {p0}, Lmfk;->e()V

    .line 857
    return-void

    .line 826
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe0 -> :sswitch_1
        0xea -> :sswitch_2
    .end sparse-switch
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 866
    iget v1, p0, Lmfk;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1125
    sget-object v3, Lmfg;->a:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1127
    :pswitch_0
    new-instance p0, Lmfk;

    check-cast p2, Llvp;

    invoke-direct {p0, p2}, Lmfk;-><init>(Llvp;)V

    .line 1181
    :cond_0
    :goto_0
    return-object p0

    .line 1131
    :pswitch_1
    new-instance p0, Lmfk;

    sget-object v0, Llwg;->e:Llvp;

    .line 3069
    sget-object v1, Llvt;->a:Llvt;

    .line 1134
    invoke-direct {p0, v0}, Lmfk;-><init>(Llvp;)V

    goto :goto_0

    .line 1137
    :pswitch_2
    iget-byte v3, p0, Lmfk;->h:B

    .line 1138
    if-ne v3, v1, :cond_1

    sget-object p0, Lmfk;->d:Lmfk;

    goto :goto_0

    .line 1139
    :cond_1
    if-nez v3, :cond_2

    move-object p0, v0

    goto :goto_0

    .line 1141
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1142
    invoke-direct {p0}, Lmfk;->j()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1143
    if-eqz v3, :cond_3

    .line 1144
    iput-byte v2, p0, Lmfk;->h:B

    :cond_3
    move-object p0, v0

    .line 1146
    goto :goto_0

    .line 1148
    :cond_4
    if-eqz v3, :cond_5

    iput-byte v1, p0, Lmfk;->h:B

    .line 1149
    :cond_5
    sget-object p0, Lmfk;->d:Lmfk;

    goto :goto_0

    :pswitch_3
    move-object p0, v0

    .line 1153
    goto :goto_0

    .line 1156
    :pswitch_4
    new-instance p0, Llwa;

    .line 4033
    invoke-direct {p0, v2}, Llwa;-><init>(C)V

    goto :goto_0

    .line 4199
    :pswitch_5
    sget-object v0, Lmfk;->d:Lmfk;

    .line 1159
    if-eq p2, v0, :cond_0

    .line 1160
    check-cast p2, Lmfk;

    .line 1161
    invoke-direct {p2}, Lmfk;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4872
    iget-wide v4, p2, Lmfk;->f:J

    .line 4878
    iget v0, p0, Lmfk;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmfk;->e:I

    .line 4879
    iput-wide v4, p0, Lmfk;->f:J

    .line 4895
    :cond_6
    iget v0, p2, Lmfk;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 1164
    :goto_1
    if-eqz v0, :cond_7

    .line 1165
    iget v0, p0, Lmfk;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmfk;->e:I

    .line 1166
    iget-object v0, p2, Lmfk;->g:Ljava/lang/String;

    iput-object v0, p0, Lmfk;->g:Ljava/lang/String;

    .line 1168
    :cond_7
    iget-object v0, p2, Lmfk;->b:Llxf;

    invoke-virtual {p0, v0}, Lmfk;->a(Llxf;)V

    goto :goto_0

    :cond_8
    move v0, v2

    .line 4895
    goto :goto_1

    .line 1172
    :pswitch_6
    sget-object p0, Lmfk;->d:Lmfk;

    goto :goto_0

    .line 1175
    :pswitch_7
    sget-object v0, Lmfk;->i:Llwt;

    if-nez v0, :cond_a

    const-class v1, Lmfk;

    monitor-enter v1

    .line 1176
    :try_start_0
    sget-object v0, Lmfk;->i:Llwt;

    if-nez v0, :cond_9

    .line 1177
    new-instance v0, Llvi;

    sget-object v2, Lmfk;->d:Lmfk;

    invoke-direct {v0, v2}, Llvi;-><init>(Llvy;)V

    sput-object v0, Lmfk;->i:Llwt;

    .line 1179
    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :cond_a
    sget-object p0, Lmfk;->i:Llwt;

    goto/16 :goto_0

    .line 1179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Llvq;)V
    .locals 4

    .prologue
    .line 942
    iget v0, p0, Lmfk;->e:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 943
    const/16 v0, 0x1c

    iget-wide v2, p0, Lmfk;->f:J

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(IJ)V

    .line 945
    :cond_0
    iget v0, p0, Lmfk;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 946
    const/16 v0, 0x1d

    .line 1901
    iget-object v1, p0, Lmfk;->g:Ljava/lang/String;

    .line 946
    invoke-virtual {p1, v0, v1}, Llvq;->a(ILjava/lang/String;)V

    .line 948
    :cond_1
    iget-object v0, p0, Lmfk;->b:Llxf;

    invoke-virtual {v0, p1}, Llxf;->a(Llvq;)V

    .line 949
    return-void
.end method

.method public m()I
    .locals 4

    .prologue
    .line 952
    iget v0, p0, Lmfk;->c:I

    .line 953
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 966
    :goto_0
    return v0

    .line 955
    :cond_0
    const/4 v0, 0x0

    .line 956
    iget v1, p0, Lmfk;->e:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 957
    const/16 v0, 0x1c

    iget-wide v2, p0, Lmfk;->f:J

    .line 958
    invoke-static {v0, v2, v3}, Llvq;->d(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 960
    :cond_1
    iget v1, p0, Lmfk;->e:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 961
    const/16 v1, 0x1d

    .line 2901
    iget-object v2, p0, Lmfk;->g:Ljava/lang/String;

    .line 962
    invoke-static {v1, v2}, Llvq;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 964
    :cond_2
    iget-object v1, p0, Lmfk;->b:Llxf;

    invoke-virtual {v1}, Llxf;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 965
    iput v0, p0, Lmfk;->c:I

    goto :goto_0
.end method
