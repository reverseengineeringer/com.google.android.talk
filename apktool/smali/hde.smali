.class public final Lhde;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lhgu;

.field private static final c:Lhgu;

.field private static final d:Lhgu;

.field private static final e:Lhgu;

.field private static final f:Lhgu;

.field private static final g:Lhgu;


# instance fields
.field private h:Landroid/content/Context;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/16 v4, 0xf

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    sput-object v0, Lhde;->a:Ljava/util/Set;

    const-string v1, "armeabi-v7a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lhde;->a:Ljava/util/Set;

    const-string v1, "arm64-v8a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lhde;->a:Ljava/util/Set;

    const-string v1, "x86"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lhgu;

    new-instance v1, Lhlp;

    const/16 v2, 0xa0

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    invoke-direct {v0, v1, v4}, Lhgu;-><init>(Lhlp;I)V

    sput-object v0, Lhde;->b:Lhgu;

    .line 32
    new-instance v0, Lhgu;

    new-instance v1, Lhlp;

    const/16 v2, 0x140

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    invoke-direct {v0, v1, v4}, Lhgu;-><init>(Lhlp;I)V

    sput-object v0, Lhde;->c:Lhgu;

    .line 34
    new-instance v0, Lhgu;

    new-instance v1, Lhlp;

    const/16 v2, 0x1e0

    const/16 v3, 0x12c

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    invoke-direct {v0, v1, v4}, Lhgu;-><init>(Lhlp;I)V

    sput-object v0, Lhde;->d:Lhgu;

    .line 36
    new-instance v0, Lhgu;

    new-instance v1, Lhlp;

    const/16 v2, 0x280

    const/16 v3, 0x190

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    invoke-direct {v0, v1, v5}, Lhgu;-><init>(Lhlp;I)V

    sput-object v0, Lhde;->e:Lhgu;

    .line 38
    new-instance v0, Lhgu;

    new-instance v1, Lhlp;

    const/16 v2, 0x3c0

    const/16 v3, 0x258

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    invoke-direct {v0, v1, v5}, Lhgu;-><init>(Lhlp;I)V

    sput-object v0, Lhde;->f:Lhgu;

    .line 40
    new-instance v0, Lhgu;

    new-instance v1, Lhlp;

    const/16 v2, 0x500

    const/16 v3, 0x320

    invoke-direct {v1, v2, v3}, Lhlp;-><init>(II)V

    invoke-direct {v0, v1, v5}, Lhgu;-><init>(Lhlp;I)V

    sput-object v0, Lhde;->g:Lhgu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(I)Lhgu;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lhde;->g:Lhgu;

    invoke-virtual {v0}, Lhgu;->c()I

    move-result v0

    sget-object v1, Lhde;->f:Lhgu;

    invoke-virtual {v1}, Lhgu;->c()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_0

    .line 175
    sget-object v0, Lhde;->g:Lhgu;

    .line 183
    :goto_0
    return-object v0

    .line 176
    :cond_0
    sget-object v0, Lhde;->f:Lhgu;

    invoke-virtual {v0}, Lhgu;->c()I

    move-result v0

    sget-object v1, Lhde;->e:Lhgu;

    invoke-virtual {v1}, Lhgu;->c()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_1

    .line 177
    sget-object v0, Lhde;->f:Lhgu;

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lhde;->e:Lhgu;

    invoke-virtual {v0}, Lhgu;->c()I

    move-result v0

    sget-object v1, Lhde;->d:Lhgu;

    invoke-virtual {v1}, Lhgu;->c()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_2

    .line 179
    sget-object v0, Lhde;->e:Lhgu;

    goto :goto_0

    .line 180
    :cond_2
    sget-object v0, Lhde;->d:Lhgu;

    invoke-virtual {v0}, Lhgu;->c()I

    move-result v0

    sget-object v1, Lhde;->c:Lhgu;

    invoke-virtual {v1}, Lhgu;->c()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_3

    .line 181
    sget-object v0, Lhde;->d:Lhgu;

    goto :goto_0

    .line 183
    :cond_3
    sget-object v0, Lhde;->c:Lhgu;

    goto :goto_0
.end method

.method private b(I)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 84
    sget-object v4, Lhde;->c:Lhgu;

    .line 85
    sget-object v3, Lhde;->b:Lhgu;

    .line 86
    sget-object v2, Lhde;->c:Lhgu;

    .line 4101
    sget v5, Lhdf;->b:I

    .line 90
    iget-object v6, p0, Lhde;->h:Landroid/content/Context;

    .line 5072
    invoke-static {v6}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a(Landroid/content/Context;)I

    move-result v6

    .line 5073
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 92
    :cond_0
    :goto_0
    iget-object v1, p0, Lhde;->h:Landroid/content/Context;

    .line 93
    invoke-static {v1, p1}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a(Landroid/content/Context;I)Z

    move-result v6

    .line 98
    const/4 v1, 0x2

    if-lt v5, v1, :cond_d

    .line 99
    sget-object v1, Lhde;->e:Lhgu;

    .line 100
    if-lt v5, v7, :cond_1

    .line 101
    sget-object v1, Lhde;->f:Lhgu;

    .line 103
    :cond_1
    if-eqz v0, :cond_2

    .line 104
    sget-object v1, Lhde;->g:Lhgu;

    .line 107
    :cond_2
    sget-object v2, Lhde;->b:Lhgu;

    .line 108
    if-eqz v0, :cond_3

    .line 109
    sget-object v2, Lhde;->c:Lhgu;

    .line 112
    :cond_3
    sget-object v3, Lhde;->d:Lhgu;

    .line 113
    if-ge v5, v7, :cond_4

    if-eqz v0, :cond_5

    .line 115
    :cond_4
    sget-object v3, Lhde;->e:Lhgu;

    .line 117
    :cond_5
    if-lt v5, v7, :cond_c

    if-eqz v0, :cond_c

    .line 119
    sget-object v0, Lhde;->f:Lhgu;

    .line 121
    :goto_1
    if-eqz v6, :cond_6

    .line 122
    sget-object v0, Lhde;->g:Lhgu;

    .line 127
    :cond_6
    :goto_2
    iget-object v3, p0, Lhde;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "babel_hangout_max_in_primary_video"

    invoke-static {v3, v4, v8}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    if-eqz v3, :cond_7

    .line 130
    invoke-static {v3}, Lhgu;->a(Ljava/lang/String;)Lhgu;

    move-result-object v1

    .line 132
    :cond_7
    iget-object v3, p0, Lhde;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "babel_hangout_max_in_secondary_video"

    invoke-static {v3, v4, v8}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_8

    .line 135
    invoke-static {v3}, Lhgu;->a(Ljava/lang/String;)Lhgu;

    move-result-object v2

    .line 137
    :cond_8
    iget-object v3, p0, Lhde;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "babel_hangout_max_out_nofx_video"

    invoke-static {v3, v4, v8}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_9

    .line 140
    invoke-static {v3}, Lhgu;->a(Ljava/lang/String;)Lhgu;

    move-result-object v0

    .line 5091
    :cond_9
    sget-object v3, Lhgu;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 5092
    :try_start_0
    sget-object v4, Lhgu;->d:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5093
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5100
    sget-object v1, Lhgu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5101
    :try_start_1
    sget-object v3, Lhgu;->e:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5102
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5109
    sget-object v1, Lhgu;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5110
    :try_start_2
    sget-object v2, Lhgu;->f:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5112
    sget-object v2, Lhgu;->c:Lhgu;

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lhgu;->c()I

    move-result v2

    sget-object v3, Lhgu;->c:Lhgu;

    invoke-virtual {v3}, Lhgu;->c()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 5113
    :cond_a
    sput-object v0, Lhgu;->c:Lhgu;

    .line 5115
    :cond_b
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 5075
    :pswitch_0
    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 5077
    :pswitch_1
    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 5093
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 5102
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 5115
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_c
    move-object v0, v3

    goto/16 :goto_1

    :cond_d
    move-object v0, v2

    move-object v1, v4

    move-object v2, v3

    goto/16 :goto_2

    .line 5073
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lhde;->i:Z

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    iput-object p1, p0, Lhde;->h:Landroid/content/Context;

    .line 1069
    invoke-direct {p0, v0}, Lhde;->b(I)V

    .line 1074
    iget-object v2, p0, Lhde;->h:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    invoke-direct {p0, v1}, Lhde;->b(I)V

    .line 1123
    :cond_0
    sget-object v2, Lhgu;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 1124
    const/4 v3, 0x1

    :try_start_0
    sput-boolean v3, Lhgu;->b:Z

    .line 1125
    sget-object v3, Lhgu;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1126
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    iget-object v2, p0, Lhde;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "babel_hangout_supported"

    invoke-static {v2, v3, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    const-string v1, "vclib"

    const-string v2, "GServices override - disabling hangout calls"

    .line 2089
    invoke-static {v7, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    iput-boolean v0, p0, Lhde;->i:Z

    .line 55
    iget-boolean v0, p0, Lhde;->i:Z

    return v0

    .line 1126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1156
    :cond_1
    iget-object v2, p0, Lhde;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.microphone"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1157
    const-string v2, "vclib"

    const-string v3, "No microphone available for hangout calls"

    .line 3089
    invoke-static {v7, v2, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_2
    sget-object v2, Lhde;->a:Ljava/util/Set;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lhde;->a:Ljava/util/Set;

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 1161
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 1162
    goto :goto_0

    .line 1165
    :cond_4
    const-string v1, "vclib"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "ABI not supported ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - disabling hangout calls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4089
    invoke-static {v7, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
