.class public Leqq;
.super Ldyx;
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
            "Leqq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Leqr;

    invoke-direct {v0}, Leqr;-><init>()V

    sput-object v0, Leqq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ldyx;-><init>(Landroid/os/Parcel;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leqq;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leqq;->e:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leqq;->f:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 26
    iput-object p2, p0, Leqq;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Leqq;->e:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Leqq;->f:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p2}, Leqq;->a(Lbcg;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public p_()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ldmu;

    iget-object v1, p0, Leqq;->a:Ljava/lang/String;

    iget-object v2, p0, Leqq;->e:Ljava/lang/String;

    iget-object v3, p0, Leqq;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ldmu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Leqq;->a(Leff;)V

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Ldyx;->a(Landroid/os/Parcel;I)V

    .line 56
    iget-object v0, p0, Leqq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Leqq;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Leqq;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
