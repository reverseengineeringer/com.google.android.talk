.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lglc;


# instance fields
.field private final a:I

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:I

.field private e:Lcom/google/android/gms/maps/model/CameraPosition;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lglc;

    invoke-direct {v0}, Lglc;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lglc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->a:I

    return-void
.end method

.method public constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->d:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->a:I

    invoke-static {p2}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->b:Ljava/lang/Boolean;

    invoke-static {p3}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->c:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->d:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->e:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->f:Ljava/lang/Boolean;

    invoke-static {p7}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->g:Ljava/lang/Boolean;

    invoke-static {p8}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->h:Ljava/lang/Boolean;

    invoke-static {p9}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->i:Ljava/lang/Boolean;

    invoke-static {p10}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->j:Ljava/lang/Boolean;

    invoke-static {p11}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->k:Ljava/lang/Boolean;

    invoke-static {p12}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->l:Ljava/lang/Boolean;

    invoke-static {p13}, Laal;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->m:Ljava/lang/Boolean;

    return-void
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->a:I

    return v0
.end method

.method private c()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->b:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private d()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->c:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private e()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->f:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private f()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->g:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private g()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->h:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private h()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->i:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private i()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->j:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private j()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->k:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private k()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->l:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private l()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->m:Ljava/lang/Boolean;

    invoke-static {v0}, Laal;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method private m()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->d:I

    return v0
.end method

.method private n()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->e:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 2000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Laal;->p(Landroid/os/Parcel;I)I

    move-result v0

    .line 1000
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->b()I

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->c()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->d()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->m()I

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->n()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {p1, v1, v2, p2}, Laal;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->e()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->f()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->g()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->h()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->i()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->j()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->k()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xe

    invoke-direct {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->l()B

    move-result v2

    invoke-static {p1, v1, v2}, Laal;->a(Landroid/os/Parcel;IB)V

    .line 3000
    invoke-static {p1, v0}, Laal;->q(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method
