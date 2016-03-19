.class final Lbbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbci;
.implements Lbcn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbbj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lbfz;

.field private final e:Lbcj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lbbk;

    invoke-direct {v0}, Lbbk;-><init>()V

    sput-object v0, Lbbj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lbbj;->a:I

    .line 51
    iput-wide p2, p0, Lbbj;->b:J

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbj;->c:Ljava/util/List;

    .line 53
    sget-object v0, Lbcj;->c:Lbcj;

    iput-object v0, p0, Lbbj;->e:Lbcj;

    .line 54
    return-void
.end method

.method constructor <init>(IJLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lbbj;->a:I

    .line 66
    iput-wide p2, p0, Lbbj;->b:J

    .line 67
    iput-object p4, p0, Lbbj;->c:Ljava/util/List;

    .line 68
    sget-object v0, Lbcj;->b:Lbcj;

    iput-object v0, p0, Lbbj;->e:Lbcj;

    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbbj;->a:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbbj;->b:J

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbj;->c:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lbbj;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    sget-object v1, Lbcj;->b:Lbcj;

    invoke-virtual {v1}, Lbcj;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    sget-object v0, Lbcj;->b:Lbcj;

    iput-object v0, p0, Lbbj;->e:Lbcj;

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v1, Lbcj;->c:Lbcj;

    invoke-virtual {v1}, Lbcj;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 81
    sget-object v0, Lbcj;->c:Lbcj;

    iput-object v0, p0, Lbbj;->e:Lbcj;

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lbcj;->a:Lbcj;

    iput-object v0, p0, Lbbj;->e:Lbcj;

    .line 84
    const-string v0, "Coalesce type cannot be NONE for delayed tasks."

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    iget-object v0, p0, Lbbj;->d:Lbfz;

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    new-instance v0, Lbfz;

    iget v1, p0, Lbbj;->a:I

    invoke-direct {v0, p1, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbbj;->d:Lbfz;
    :try_end_0
    .catch Lbgz; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    iget-object v0, p0, Lbbj;->d:Lbfz;

    invoke-virtual {v0}, Lbfz;->v()Ljava/util/List;

    move-result-object v1

    .line 128
    const-class v0, Lhba;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget v2, p0, Lbbj;->a:I

    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v2

    .line 129
    iget-object v0, p0, Lbbj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const/16 v0, 0xb6d

    invoke-interface {v2, v0}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    const-string v0, "Babel_CMTRLogTask"

    const-string v1, "AccountId is no longer valid: %d."

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lbbj;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    sget v0, Lbco;->a:I

    .line 163
    :goto_1
    return v0

    .line 135
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbbj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "Babel_CMTRLogTask"

    const-string v2, "Found %d ongoing hangouts."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const-string v0, "babel_call_media_type_refresh_max_delay_ms"

    sget-wide v2, Leea;->v:J

    .line 139
    invoke-static {p1, v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 143
    const-string v0, "babel_call_media_type_refresh_min_delay_ms"

    sget-wide v4, Leea;->w:J

    .line 144
    invoke-static {p1, v0, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1052
    sget-object v0, Lkoc;->a:Ljava/security/SecureRandom;

    .line 149
    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v2, v4

    .line 151
    new-instance v4, Lbbh;

    iget v0, p0, Lbbj;->a:I

    invoke-direct {v4, v0, v2, v3, v1}, Lbbh;-><init>(IJLjava/util/List;)V

    .line 154
    const-class v0, Lbcm;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    invoke-interface {v0, v4}, Lbcm;->a(Lbcn;)Lbcg;

    .line 155
    const-string v0, "Babel_CMTRLogTask"

    const-string v4, "call_media_type refresh task scheduled with a delay of %d ms and %d conversations for account %d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    .line 160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x2

    iget v2, p0, Lbbj;->a:I

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 155
    invoke-static {v0, v4, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_3
    sget v0, Lbco;->a:I

    goto :goto_1
.end method

.method public a()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lbbj;->b:J

    return-wide v0
.end method

.method public b()Lbcj;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lbbj;->e:Lbcj;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lbbj;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-wide v0, p0, Lbbj;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-object v0, p0, Lbbj;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 177
    sget-object v0, Lbbl;->a:[I

    iget-object v1, p0, Lbbj;->e:Lbcj;

    invoke-virtual {v1}, Lbcj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    const-string v0, "Coalesce type can only be either REPLACE_OLD or USE_OLD."

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 179
    :pswitch_0
    sget-object v0, Lbcj;->b:Lbcj;

    invoke-virtual {v0}, Lbcj;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    sget-object v0, Lbcj;->c:Lbcj;

    invoke-virtual {v0}, Lbcj;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
