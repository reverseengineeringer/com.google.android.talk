.class public Lecu;
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
            "Lecu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lecv;

    invoke-direct {v0}, Lecv;-><init>()V

    sput-object v0, Lecu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ldyx;-><init>(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecu;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lbfd;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 22
    invoke-static {p2}, Laal;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecu;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p2}, Lecu;->a(Lbcg;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public p_()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ldpw;

    iget-object v1, p0, Lecu;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ldpw;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0}, Lecu;->a(Leff;)V

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Ldyx;->a(Landroid/os/Parcel;I)V

    .line 49
    iget-object v0, p0, Lecu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
