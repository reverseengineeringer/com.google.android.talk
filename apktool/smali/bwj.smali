.class public final Lbwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbcn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbwj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lbwk;

    invoke-direct {v0}, Lbwk;-><init>()V

    sput-object v0, Lbwj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lbwj;-><init>(Ljava/lang/String;IJ)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbwj;->a:Ljava/lang/String;

    .line 24
    iput p2, p0, Lbwj;->b:I

    .line 25
    iput-wide p3, p0, Lbwj;->c:J

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 4

    .prologue
    .line 34
    new-instance v1, Lbfz;

    iget v0, p0, Lbwj;->b:I

    invoke-direct {v1, p1, v0}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-virtual {v1}, Lbfz;->a()V

    .line 37
    :try_start_0
    iget-object v0, p0, Lbwj;->a:Ljava/lang/String;

    iget-wide v2, p0, Lbwj;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lbfz;->g(Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Lbfz;->c()V

    .line 43
    sget v0, Lbco;->a:I

    return v0

    .line 40
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lbfz;->c()V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lbwj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lbwj;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-wide v0, p0, Lbwj;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    return-void
.end method
