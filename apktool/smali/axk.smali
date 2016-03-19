.class final Laxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Laxj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 2147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2149
    const/4 v1, 0x2

    new-array v1, v1, [Z

    .line 2150
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 2152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2155
    new-instance v4, Laxj;

    invoke-direct {v4, v0, v2, v3}, Laxj;-><init>(Ljava/lang/String;II)V

    .line 2157
    const/4 v0, 0x0

    aget-boolean v0, v1, v0

    iput-boolean v0, v4, Laxj;->d:Z

    .line 2158
    const/4 v0, 0x1

    aget-boolean v0, v1, v0

    iput-boolean v0, v4, Laxj;->e:Z

    .line 2160
    const-class v0, Lbfb;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbfb;

    iput-object v0, v4, Laxj;->f:Lbfb;

    .line 2161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Laxj;->g:Ljava/lang/String;

    .line 2163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lezc;->d(I)Z

    move-result v0

    iput-boolean v0, v4, Laxj;->m:Z

    .line 2165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v4, Laxj;->h:J

    .line 2166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Laxj;->i:Ljava/lang/String;

    .line 2167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v4, Laxj;->k:I

    .line 2168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Laxj;->j:Ljava/lang/String;

    .line 2169
    const-class v0, Lbfb;

    .line 2170
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v4, Laxj;->l:Ljava/util/ArrayList;

    .line 2171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lezc;->d(I)Z

    move-result v0

    iput-boolean v0, v4, Laxj;->n:Z

    .line 2172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lezc;->d(I)Z

    move-result v0

    iput-boolean v0, v4, Laxj;->o:Z

    .line 142
    return-object v4
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1178
    new-array v0, p1, [Laxj;

    .line 142
    return-object v0
.end method
