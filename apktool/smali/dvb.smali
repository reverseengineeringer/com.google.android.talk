.class public final Ldvb;
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
            "Ldvb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Lbfd;

.field public final c:Ldvm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ldvc;

    invoke-direct {v0}, Ldvc;-><init>()V

    sput-object v0, Ldvb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    iput-object v0, p0, Ldvb;->b:Lbfd;

    .line 39
    iget-object v0, p0, Ldvb;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldvb;->a:I

    .line 40
    iget-object v0, p0, Ldvb;->b:Lbfd;

    invoke-static {v0}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v0

    iput-object v0, p0, Ldvb;->c:Ldvm;

    .line 41
    return-void
.end method

.method public constructor <init>(Lbfd;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldvb;->a:I

    .line 20
    invoke-static {p1}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v0

    iput-object v0, p0, Ldvb;->c:Ldvm;

    .line 21
    iput-object p1, p0, Ldvb;->b:Lbfd;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ldvb;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Ldvb;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    return-void
.end method
