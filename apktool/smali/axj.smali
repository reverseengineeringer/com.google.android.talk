.class public final Laxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Laxj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public d:Z

.field public e:Z

.field public f:Lbfb;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Laxk;

    invoke-direct {v0}, Laxk;-><init>()V

    sput-object v0, Laxj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v2, p0, Laxj;->k:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxj;->l:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Laxj;->a:Ljava/lang/String;

    .line 72
    iput p2, p0, Laxj;->b:I

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laxj;->h:J

    .line 74
    iput v2, p0, Laxj;->c:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Laxj;->k:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxj;->l:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Laxj;->a:Ljava/lang/String;

    .line 82
    iput p2, p0, Laxj;->b:I

    .line 83
    iput p3, p0, Laxj;->c:I

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laxj;->h:J

    .line 85
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Laxj;->k:I

    packed-switch v0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x864
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[%s;%s;%s;%d;%d;%s;%s;%s;%s]"

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Laxj;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-boolean v4, p0, Laxj;->d:Z

    .line 93
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-boolean v4, p0, Laxj;->e:Z

    .line 94
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p0, Laxj;->b:I

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget v4, p0, Laxj;->c:I

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Laxj;->g:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x6

    iget-object v0, p0, Laxj;->f:Lbfb;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Laxj;->f:Lbfb;

    invoke-virtual {v0}, Lbfb;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x7

    iget-object v0, p0, Laxj;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Laxj;->i:Ljava/lang/String;

    :goto_1
    aput-object v0, v3, v4

    const/16 v4, 0x8

    iget-object v0, p0, Laxj;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Laxj;->j:Ljava/lang/String;

    :goto_2
    aput-object v0, v3, v4

    .line 89
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    const-string v0, "no-drafts"

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "no-chatRingtoneUri"

    goto :goto_1

    .line 100
    :cond_2
    const-string v0, "no-hangoutRingtoneUri"

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Laxj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Laxj;->d:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x1

    iget-boolean v2, p0, Laxj;->e:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 117
    iget v0, p0, Laxj;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Laxj;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Laxj;->f:Lbfb;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Laxj;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Laxj;->m:Z

    invoke-static {v0}, Lezc;->a(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-wide v0, p0, Laxj;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object v0, p0, Laxj;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Laxj;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Laxj;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Laxj;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 127
    iget-boolean v0, p0, Laxj;->n:Z

    invoke-static {v0}, Lezc;->a(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean v0, p0, Laxj;->o:Z

    invoke-static {v0}, Lezc;->a(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
