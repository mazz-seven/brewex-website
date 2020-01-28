defmodule FeatureBox do
  use Surface.Component

  property(title, :string)
  property(icon, :string, default: "circle")

  def render(assigns) do
    ~H"""
    <div class="w-full sm:w-1/2 lg:w-1/3 sm:px-6 mb-12">
      <svg class="w-12 h-12 feather text-light-blue-600 mb-2">
        <use xlink:href="feather-sprite.svg#{{ @icon }}"/>
      </svg>
      <h4 class="text-lg font-medium mb-1 text-cool-grey-900">{{ @title }}</h4>
      <p class="leading-snug text-cool-grey-700">
        {{ @inner_content.() }}
      </p>
    </div>
    """
  end
end

defmodule Logo do
  use Surface.Component

  def render(assigns) do
    ~H"""
    <svg width="163" height="115" viewBox="0 0 163 115" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M81.5329 40.2488C85.8459 40.1641 90.1424 39.6902 94.3701 38.8331C96.0812 38.3166 97.023 37.8172 99.0019 36.7831C98.9101 37.8389 97.6428 42.2053 99.4587 43.9428C103.327 48.0849 106 53.991 106 57.7564C106 67.4034 95.8023 73.6128 80.51 73.6379C65.2176 73.6631 56 67.4037 56 57.7564C56 53.0391 59.4127 48.229 62.9344 43.9428C63.6101 42.3615 63.0454 38.1044 62.9344 36.8418C64.2751 37.1978 66.5965 38.5927 69.4676 39.1853C73.8672 40.0933 79.356 40.2488 81.5329 40.2488Z" fill="#141313"/>
      <path d="M81.3753 38.049C87.2003 38.049 94.3801 36.6134 97.5264 34.5022C98.1716 33.8117 99.1282 32.6922 98.5396 31.4719C98.2919 30.8927 99.1024 30.711 99.5944 30.6721C100.721 30.583 100.924 32.714 100.924 33.7812C100.924 37.9823 92.233 40.2883 81.0301 40.2883C69.8272 40.2883 60.5349 37.627 60.5349 33.4259C60.5349 32.657 60.923 31.4766 61.0376 32.04C62.1611 33.7394 63.768 35.0633 65.651 35.8409C69.4827 37.5446 75.8835 38.049 81.3753 38.049Z" fill="#D3D3D3"/>
      <path d="M83.5994 6.36832C85.3579 6.36832 86.7835 4.94272 86.7835 3.18416C86.7835 1.4256 85.3579 0 83.5994 0C81.8408 0 80.4152 1.4256 80.4152 3.18416C80.4152 4.94272 81.8408 6.36832 83.5994 6.36832Z" fill="#B794F4"/>
      <path d="M101.028 10.0552C102.232 10.0552 103.207 9.0798 103.207 7.87657C103.207 6.67334 102.232 5.69794 101.028 5.69794C99.8251 5.69794 98.8497 6.67334 98.8497 7.87657C98.8497 9.0798 99.8251 10.0552 101.028 10.0552Z" fill="#B794F4"/>
      <path d="M95.1628 21.116C96.0884 21.116 96.8387 20.3657 96.8387 19.4402C96.8387 18.5146 96.0884 17.7643 95.1628 17.7643C94.2373 17.7643 93.4869 18.5146 93.4869 19.4402C93.4869 20.3657 94.2373 21.116 95.1628 21.116Z" fill="#B794F4"/>
      <path d="M84.94 21.4512C85.5878 21.4512 86.1131 20.926 86.1131 20.2781C86.1131 19.6302 85.5878 19.105 84.94 19.105C84.2921 19.105 83.7668 19.6302 83.7668 20.2781C83.7668 20.926 84.2921 21.4512 84.94 21.4512Z" fill="#B794F4"/>
      <path d="M64.9971 23.4622C66.1078 23.4622 67.0082 22.5618 67.0082 21.4512C67.0082 20.3405 66.1078 19.4401 64.9971 19.4401C63.8865 19.4401 62.9861 20.3405 62.9861 21.4512C62.9861 22.5618 63.8865 23.4622 64.9971 23.4622Z" fill="#B794F4"/>
      <path d="M73.8792 11.0608C74.7122 11.0608 75.3875 10.3855 75.3875 9.55248C75.3875 8.71947 74.7122 8.04419 73.8792 8.04419C73.0462 8.04419 72.3709 8.71947 72.3709 9.55248C72.3709 10.3855 73.0462 11.0608 73.8792 11.0608Z" fill="#B794F4"/>
      <path d="M63.1537 5.36276C63.6165 5.36276 63.9916 4.98761 63.9916 4.52483C63.9916 4.06205 63.6165 3.68689 63.1537 3.68689C62.6909 3.68689 62.3157 4.06205 62.3157 4.52483C62.3157 4.98761 62.6909 5.36276 63.1537 5.36276Z" fill="#B794F4"/>
      <path d="M58.2936 13.407C58.8489 13.407 59.2991 12.9568 59.2991 12.4015C59.2991 11.8461 58.8489 11.3959 58.2936 11.3959C57.7383 11.3959 57.2881 11.8461 57.2881 12.4015C57.2881 12.9568 57.7383 13.407 58.2936 13.407Z" fill="#B794F4"/>
      <path d="M61.039 31.9271C61.039 31.9271 61.0534 29.7387 61.8977 29.1391C62.742 28.5395 64.0287 28.0243 65.0678 28.341C66.1068 28.6578 66.7715 25.6875 67.8042 25.4391C68.8368 25.1907 70.4051 25.1844 71.5507 26.078C72.6964 26.9715 72.6407 23.9664 74.1839 24.1403C75.727 24.3143 75.4753 24.9735 76.463 25.0426C77.4508 25.1116 78.3876 22.5697 79.6338 22.8834C80.88 23.1971 81.3804 24.6816 82.2978 24.7999C83.2151 24.9182 83.5004 24.0867 84.8769 23.9405C86.2535 23.7944 87.4474 24.6146 87.9327 24.6333C88.4181 24.6521 88.7904 23.242 90.103 23.1586C91.4155 23.0751 91.1896 24.1128 92.0778 24.1413C92.966 24.1698 94.3011 23.4321 95.3438 24.634C96.3865 25.836 96.1187 26.8076 96.1187 26.8076C96.1187 26.8076 100.056 28.0558 100.036 29.6677C100.015 31.2795 98.8145 31.1729 98.7314 32.1523C98.6483 33.1317 98.6372 33.6522 97.2432 34.7868C95.8492 35.9213 94.059 36.0685 92.4666 36.6148C90.8742 37.1612 87.3096 42.5474 87.3204 45.0867C87.4263 46.9949 87.0395 48.4009 87.3204 50.2843C87.5737 51.9833 89.0894 53.4208 89.0854 54.6992C89.0773 57.2659 86.7321 58.8919 86.2146 59.4194C85.6971 59.947 83.4132 61.3014 81.8352 60.4967C80.2572 59.6919 84.3557 55.6886 85.0194 54.0204C85.683 52.3523 85.5429 47.9917 85.31 47.0435C85.077 46.0952 82.4566 38.046 80.091 38.2173C77.7253 38.3886 75.2239 37.863 73.0858 37.6572C70.9478 37.4514 69.2186 42.2826 69.6449 43.6485C70.0713 45.0143 70.5794 48.5481 69.6449 49.9223C68.7105 51.2965 67.959 51.0159 67.835 50.8246C67.711 50.6332 67.7096 48.4361 68.4383 46.7512C69.167 45.0663 67.4626 36.6132 66.0455 36.1278C64.6284 35.6425 62.6338 34.3534 61.9017 33.4833C61.4945 33.0405 61.1988 32.507 61.039 31.9271V31.9271Z" fill="#B794F4"/>
      <path d="M96.0007 29.1601C97.7593 29.1601 99.1849 27.7345 99.1849 25.976C99.1849 24.2174 97.7593 22.7918 96.0007 22.7918C94.2422 22.7918 92.8166 24.2174 92.8166 25.976C92.8166 27.7345 94.2422 29.1601 96.0007 29.1601Z" fill="#B794F4"/>
      <path d="M89.6325 26.1437C90.6506 26.1437 91.4759 25.3184 91.4759 24.3002C91.4759 23.2821 90.6506 22.4568 89.6325 22.4568C88.6143 22.4568 87.789 23.2821 87.789 24.3002C87.789 25.3184 88.6143 26.1437 89.6325 26.1437Z" fill="#B794F4"/>
      <path d="M87.2862 25.4733C88.3043 25.4733 89.1297 24.648 89.1297 23.6298C89.1297 22.6117 88.3043 21.7864 87.2862 21.7864C86.2681 21.7864 85.4427 22.6117 85.4427 23.6298C85.4427 24.648 86.2681 25.4733 87.2862 25.4733Z" fill="#B794F4"/>
      <path d="M80.2475 26.1437C81.2656 26.1437 82.091 25.3184 82.091 24.3002C82.091 23.2821 81.2656 22.4568 80.2475 22.4568C79.2294 22.4568 78.4041 23.2821 78.4041 24.3002C78.4041 25.3184 79.2294 26.1437 80.2475 26.1437Z" fill="#B794F4"/>
      <path d="M68.5164 27.8195C69.5345 27.8195 70.3599 26.9941 70.3599 25.976C70.3599 24.9579 69.5345 24.1326 68.5164 24.1326C67.4983 24.1326 66.673 24.9579 66.673 25.976C66.673 26.9941 67.4983 27.8195 68.5164 27.8195Z" fill="#B794F4"/>
      <path d="M71.533 28.8251C73.2916 28.8251 74.7172 27.3995 74.7172 25.6409C74.7172 23.8824 73.2916 22.4568 71.533 22.4568C69.7745 22.4568 68.3489 23.8824 68.3489 25.6409C68.3489 27.3995 69.7745 28.8251 71.533 28.8251Z" fill="#B794F4"/>
      <path d="M63.824 33.5174C65.3974 33.5174 66.6729 32.2419 66.6729 30.6684C66.6729 29.095 65.3974 27.8195 63.824 27.8195C62.2505 27.8195 60.975 29.095 60.975 30.6684C60.975 32.2419 62.2505 33.5174 63.824 33.5174Z" fill="#B794F4"/>
      <path d="M8.46 94.5C8.796 94.596 9.228 94.668 9.756 94.716C10.284 94.74 10.788 94.752 11.268 94.752C12.228 94.752 13.02 94.56 13.644 94.176C14.292 93.768 14.616 93.144 14.616 92.304C14.616 91.512 14.352 90.948 13.824 90.612C13.296 90.276 12.492 90.108 11.412 90.108H8.46V94.5ZM8.46 85.716H11.088C12.12 85.716 12.864 85.524 13.32 85.14C13.8 84.756 14.04 84.192 14.04 83.448C14.04 82.8 13.764 82.284 13.212 81.9C12.684 81.516 11.88 81.324 10.8 81.324C10.44 81.324 10.02 81.336 9.54 81.36C9.084 81.384 8.724 81.42 8.46 81.468V85.716ZM10.8 99.576C10.392 99.576 9.912 99.564 9.36 99.54C8.808 99.516 8.232 99.468 7.632 99.396C7.056 99.324 6.48 99.228 5.904 99.108C5.328 99.012 4.8 98.868 4.32 98.676C3 98.172 2.34 97.296 2.34 96.048V79.236C2.34 78.732 2.472 78.348 2.736 78.084C3.024 77.796 3.408 77.568 3.888 77.4C4.704 77.112 5.724 76.908 6.948 76.788C8.172 76.644 9.432 76.572 10.728 76.572C13.8 76.572 16.164 77.088 17.82 78.12C19.476 79.152 20.304 80.748 20.304 82.908C20.304 83.988 19.992 84.924 19.368 85.716C18.744 86.484 17.904 87.048 16.848 87.408C18.048 87.744 19.044 88.356 19.836 89.244C20.652 90.132 21.06 91.248 21.06 92.592C21.06 94.968 20.172 96.732 18.396 97.884C16.644 99.012 14.112 99.576 10.8 99.576ZM30.1756 98.964C29.9356 99.036 29.5516 99.108 29.0236 99.18C28.5196 99.252 27.9916 99.288 27.4396 99.288C26.9116 99.288 26.4316 99.252 25.9996 99.18C25.5916 99.108 25.2436 98.964 24.9556 98.748C24.6676 98.532 24.4396 98.244 24.2716 97.884C24.1276 97.5 24.0556 97.008 24.0556 96.408V85.608C24.0556 85.056 24.1516 84.588 24.3436 84.204C24.5596 83.796 24.8596 83.436 25.2436 83.124C25.6276 82.812 26.0956 82.536 26.6476 82.296C27.2236 82.032 27.8356 81.804 28.4836 81.612C29.1316 81.42 29.8036 81.276 30.4996 81.18C31.1956 81.06 31.8916 81 32.5876 81C33.7396 81 34.6516 81.228 35.3236 81.684C35.9956 82.116 36.3316 82.836 36.3316 83.844C36.3316 84.18 36.2836 84.516 36.1876 84.852C36.0916 85.164 35.9716 85.452 35.8276 85.716C35.3236 85.716 34.8076 85.74 34.2796 85.788C33.7516 85.836 33.2356 85.908 32.7316 86.004C32.2276 86.1 31.7476 86.208 31.2916 86.328C30.8596 86.424 30.4876 86.544 30.1756 86.688V98.964ZM47.4404 99.576C46.0244 99.576 44.7044 99.384 43.4804 99C42.2804 98.592 41.2244 97.992 40.3124 97.2C39.4244 96.408 38.7164 95.412 38.1884 94.212C37.6844 93.012 37.4324 91.608 37.4324 90C37.4324 88.416 37.6844 87.06 38.1884 85.932C38.7164 84.78 39.4004 83.844 40.2404 83.124C41.0804 82.38 42.0404 81.84 43.1204 81.504C44.2004 81.144 45.3044 80.964 46.4324 80.964C47.7044 80.964 48.8564 81.156 49.8884 81.54C50.9444 81.924 51.8444 82.452 52.5884 83.124C53.3564 83.796 53.9444 84.6 54.3524 85.536C54.7844 86.472 55.0004 87.492 55.0004 88.596C55.0004 89.412 54.7724 90.036 54.3164 90.468C53.8604 90.9 53.2244 91.176 52.4084 91.296L43.5164 92.628C43.7804 93.42 44.3204 94.02 45.1364 94.428C45.9524 94.812 46.8884 95.004 47.9444 95.004C48.9284 95.004 49.8524 94.884 50.7164 94.644C51.6044 94.38 52.3244 94.08 52.8764 93.744C53.2604 93.984 53.5844 94.32 53.8484 94.752C54.1124 95.184 54.2444 95.64 54.2444 96.12C54.2444 97.2 53.7404 98.004 52.7324 98.532C51.9644 98.94 51.1004 99.216 50.1404 99.36C49.1804 99.504 48.2804 99.576 47.4404 99.576ZM46.4324 85.428C45.8564 85.428 45.3524 85.524 44.9204 85.716C44.5124 85.908 44.1764 86.16 43.9124 86.472C43.6484 86.76 43.4444 87.096 43.3004 87.48C43.1804 87.84 43.1084 88.212 43.0844 88.596L49.2404 87.588C49.1684 87.108 48.9044 86.628 48.4484 86.148C47.9924 85.668 47.3204 85.428 46.4324 85.428ZM67.9182 98.46C67.5822 98.748 67.1262 98.976 66.5502 99.144C65.9742 99.336 65.2902 99.432 64.4982 99.432C63.5142 99.432 62.6622 99.288 61.9422 99C61.2222 98.736 60.7422 98.352 60.5022 97.848C60.2382 97.272 59.9262 96.36 59.5662 95.112C59.2302 93.864 58.8942 92.496 58.5582 91.008C58.2222 89.52 57.8982 88.008 57.5862 86.472C57.2982 84.936 57.0702 83.58 56.9022 82.404C57.2382 82.068 57.6822 81.78 58.2342 81.54C58.8102 81.276 59.4342 81.144 60.1062 81.144C60.9462 81.144 61.6302 81.336 62.1582 81.72C62.7102 82.08 63.0462 82.716 63.1662 83.628C63.4062 85.452 63.6102 86.964 63.7782 88.164C63.9462 89.34 64.0782 90.312 64.1742 91.08C64.2942 91.824 64.3782 92.4 64.4262 92.808C64.4982 93.192 64.5582 93.504 64.6062 93.744H64.7502C64.8222 93.36 64.9422 92.808 65.1102 92.088C65.3022 91.344 65.5182 90.504 65.7582 89.568C65.9982 88.632 66.2502 87.624 66.5142 86.544C66.7782 85.44 67.0422 84.348 67.3062 83.268C67.7862 83.004 68.2542 82.8 68.7102 82.656C69.1902 82.512 69.7782 82.44 70.4742 82.44C71.3142 82.44 72.0342 82.572 72.6342 82.836C73.2342 83.1 73.6182 83.508 73.7862 84.06C74.0742 85.116 74.3502 86.148 74.6142 87.156C74.8782 88.14 75.1182 89.064 75.3342 89.928C75.5502 90.768 75.7422 91.524 75.9102 92.196C76.0782 92.844 76.1982 93.36 76.2702 93.744H76.4502C76.7142 91.896 76.9662 89.976 77.2062 87.984C77.4702 85.992 77.7102 83.964 77.9262 81.9C78.3582 81.636 78.8142 81.444 79.2942 81.324C79.7742 81.204 80.2542 81.144 80.7342 81.144C81.5742 81.144 82.2702 81.324 82.8222 81.684C83.3742 82.044 83.6502 82.668 83.6502 83.556C83.6502 83.94 83.5902 84.516 83.4702 85.284C83.3502 86.052 83.1942 86.916 83.0022 87.876C82.8102 88.836 82.5822 89.844 82.3182 90.9C82.0782 91.956 81.8262 92.976 81.5622 93.96C81.3222 94.944 81.0822 95.832 80.8422 96.624C80.6262 97.416 80.4342 98.028 80.2662 98.46C79.9302 98.748 79.4142 98.976 78.7182 99.144C78.0222 99.336 77.2782 99.432 76.4862 99.432C74.4702 99.432 73.2822 98.928 72.9222 97.92C72.7782 97.488 72.5982 96.948 72.3822 96.3C72.1662 95.628 71.9382 94.896 71.6982 94.104C71.4582 93.312 71.2302 92.496 71.0142 91.656C70.7982 90.792 70.6182 89.964 70.4742 89.172C70.3062 90.012 70.1022 90.888 69.8622 91.8C69.6222 92.688 69.3702 93.564 69.1062 94.428C68.8662 95.268 68.6382 96.048 68.4222 96.768C68.2062 97.464 68.0382 98.028 67.9182 98.46ZM95.6748 99.576C94.2588 99.576 92.9388 99.384 91.7148 99C90.5148 98.592 89.4588 97.992 88.5468 97.2C87.6588 96.408 86.9508 95.412 86.4228 94.212C85.9188 93.012 85.6668 91.608 85.6668 90C85.6668 88.416 85.9188 87.06 86.4228 85.932C86.9508 84.78 87.6348 83.844 88.4748 83.124C89.3148 82.38 90.2748 81.84 91.3548 81.504C92.4348 81.144 93.5388 80.964 94.6668 80.964C95.9388 80.964 97.0908 81.156 98.1228 81.54C99.1788 81.924 100.079 82.452 100.823 83.124C101.591 83.796 102.179 84.6 102.587 85.536C103.019 86.472 103.235 87.492 103.235 88.596C103.235 89.412 103.007 90.036 102.551 90.468C102.095 90.9 101.459 91.176 100.643 91.296L91.7508 92.628C92.0148 93.42 92.5548 94.02 93.3708 94.428C94.1868 94.812 95.1228 95.004 96.1788 95.004C97.1628 95.004 98.0868 94.884 98.9508 94.644C99.8388 94.38 100.559 94.08 101.111 93.744C101.495 93.984 101.819 94.32 102.083 94.752C102.347 95.184 102.479 95.64 102.479 96.12C102.479 97.2 101.975 98.004 100.967 98.532C100.199 98.94 99.3348 99.216 98.3748 99.36C97.4148 99.504 96.5148 99.576 95.6748 99.576ZM94.6668 85.428C94.0908 85.428 93.5868 85.524 93.1548 85.716C92.7468 85.908 92.4108 86.16 92.1468 86.472C91.8828 86.76 91.6788 87.096 91.5348 87.48C91.4148 87.84 91.3428 88.212 91.3188 88.596L97.4748 87.588C97.4028 87.108 97.1388 86.628 96.6828 86.148C96.2268 85.668 95.5548 85.428 94.6668 85.428ZM105.033 84.348C105.225 83.436 105.597 82.692 106.149 82.116C106.725 81.54 107.433 81.252 108.273 81.252C109.065 81.252 109.677 81.444 110.109 81.828C110.541 82.212 111.021 82.752 111.549 83.448L113.853 86.472L117.705 81.252C119.025 81.252 120.069 81.492 120.837 81.972C121.605 82.428 121.989 83.052 121.989 83.844C121.989 84.156 121.941 84.444 121.845 84.708C121.773 84.948 121.653 85.2 121.485 85.464C121.317 85.728 121.101 86.028 120.837 86.364C120.573 86.7 120.261 87.096 119.901 87.552L117.525 90.216L122.241 96.444C122.121 97.356 121.761 98.076 121.161 98.604C120.561 99.132 119.841 99.396 119.001 99.396C118.089 99.372 117.357 99.108 116.805 98.604C116.277 98.1 115.761 97.488 115.257 96.768L113.313 93.996L109.641 99.288C109.521 99.288 109.389 99.288 109.245 99.288C109.101 99.312 108.981 99.324 108.885 99.324C107.661 99.324 106.725 99.072 106.077 98.568C105.453 98.064 105.141 97.44 105.141 96.696C105.141 96.12 105.273 95.616 105.537 95.184C105.825 94.728 106.305 94.116 106.977 93.348L109.857 90L105.033 84.348ZM123.769 96.084C123.769 95.076 124.081 94.236 124.705 93.564C125.329 92.892 126.181 92.556 127.261 92.556C128.341 92.556 129.193 92.892 129.817 93.564C130.441 94.236 130.753 95.076 130.753 96.084C130.753 97.092 130.441 97.932 129.817 98.604C129.193 99.276 128.341 99.612 127.261 99.612C126.181 99.612 125.329 99.276 124.705 98.604C124.081 97.932 123.769 97.092 123.769 96.084ZM133.283 76.644C133.283 75.732 133.583 74.964 134.183 74.34C134.807 73.716 135.623 73.404 136.631 73.404C137.639 73.404 138.443 73.716 139.043 74.34C139.667 74.964 139.979 75.732 139.979 76.644C139.979 77.556 139.667 78.324 139.043 78.948C138.443 79.572 137.639 79.884 136.631 79.884C135.623 79.884 134.807 79.572 134.183 78.948C133.583 78.324 133.283 77.556 133.283 76.644ZM139.691 98.964C139.427 99.012 139.031 99.072 138.503 99.144C137.999 99.24 137.483 99.288 136.955 99.288C136.427 99.288 135.947 99.252 135.515 99.18C135.107 99.108 134.759 98.964 134.471 98.748C134.183 98.532 133.955 98.244 133.787 97.884C133.643 97.5 133.571 97.008 133.571 96.408V81.756C133.835 81.708 134.219 81.648 134.723 81.576C135.251 81.48 135.779 81.432 136.307 81.432C136.835 81.432 137.303 81.468 137.711 81.54C138.143 81.612 138.503 81.756 138.791 81.972C139.079 82.188 139.295 82.488 139.439 82.872C139.607 83.232 139.691 83.712 139.691 84.312V98.964ZM161.695 90.252C161.695 91.74 161.467 93.072 161.011 94.248C160.555 95.4 159.907 96.372 159.067 97.164C158.251 97.956 157.267 98.556 156.115 98.964C154.963 99.372 153.679 99.576 152.263 99.576C150.847 99.576 149.563 99.36 148.411 98.928C147.259 98.496 146.263 97.884 145.423 97.092C144.607 96.276 143.971 95.292 143.515 94.14C143.059 92.988 142.831 91.692 142.831 90.252C142.831 88.836 143.059 87.552 143.515 86.4C143.971 85.248 144.607 84.276 145.423 83.484C146.263 82.668 147.259 82.044 148.411 81.612C149.563 81.18 150.847 80.964 152.263 80.964C153.679 80.964 154.963 81.192 156.115 81.648C157.267 82.08 158.251 82.704 159.067 83.52C159.907 84.312 160.555 85.284 161.011 86.436C161.467 87.588 161.695 88.86 161.695 90.252ZM149.095 90.252C149.095 91.716 149.371 92.844 149.923 93.636C150.499 94.404 151.291 94.788 152.299 94.788C153.307 94.788 154.075 94.392 154.603 93.6C155.155 92.808 155.431 91.692 155.431 90.252C155.431 88.812 155.155 87.708 154.603 86.94C154.051 86.148 153.271 85.752 152.263 85.752C151.255 85.752 150.475 86.148 149.923 86.94C149.371 87.708 149.095 88.812 149.095 90.252Z" fill="white"/>
    </svg>
    """
  end
end

defmodule BrewexSiteWeb.PageView do
  use BrewexSiteWeb, :view
  use Surface.Component

  def render("index.html", assigns) do
    ~H"""
    <main class="bg-cool-grey-0">
      <div class="bg-cool-grey-900">
        <header class="mx-auto container px-6 py-4 text-cool-grey-0"><Logo /></header>

        <div class="flex flex-col items-center bg-cool-grey-900 mx-auto container px-6 pt-4 sm:pt-16 pb-10 pb-32">

          <h1 class="pb-6 text-5xl sm:text-6xl font-bold leading-none sm:leading-tighter tracking-tight sm:text-center text-cool-grey-0">
            Make Your Elixir App
            <br />
            Deployment Painless
          </h1>

          <div class="max-w-md sm:max-w-xl sm:pb-24 text-xl sm:text-2xl text-cool-grey-200 sm:text-center leading-snug sm:tracking-snug">
            <p class="pb-6">
            Provision, and deploy Elixir application on <strong class="text-light-blue-600">your own hosting provider</strong>
            without hassle.
            </p>
          </div>
        </div>
      </div>
      <section class="mx-auto container px-6 pt-32">
      <div class="flex">
        <div class="-mt-64 shadow-lg flex items-center justify-center pb-6 max-w-xl w-full md:max-w-xl lg:max-w-3xl xl:max-w-4xl mx-auto">
          <div class="bg-cool-grey-200 w-full h-32 rounded-lg">
            <div
              class="ml-form-embed"
              data-account="1846666:o8e0h2w0e7"
              data-form="1731876:h1l8e4">
            </div>
          </div>
        </div>
      </div>
       <h2 class="text-cool-grey-900 text-3xl sm:text-center font-bold mb-4 mt-40 sm:mt-24">Why should you pick Brewex?</h2>
        <p class="sm:mx-32 text-cool-grey-700 text-lg sm:text-center">Brewex takes all the difficult work out of your hands.
          No more manually provisioning and managing your could servers.
          <br />Focus on doing what you love: building awesome Elixir applications.
        </p>
        <div class="flex flex-wrap sm:-mx-6 mt-16">
          <FeatureBox title="Provisioning" icon="upload-cloud">
            We install Nginx, Postgres and more for you in just a few minutes.
            To help you get started quickly. Choose between Digital Ocean and more.
          </FeatureBox>
          <FeatureBox title="Push To Deploy" icon="git-merge">
          Push to master on your GitHub, or custom repository to deploy new code. We'll take care of the rest.
          </FeatureBox>
          <FeatureBox title="CI/CD Hooks" icon="package">
          Brewex allow you to hook into the deployment pipeline, and customize it.
          </FeatureBox>
          <FeatureBox title="SSL Certificates" icon="lock">
          Integration with LetsEncrypt, allowing you to obtain SSL certificates for free.
          </FeatureBox>
          <FeatureBox title="Secure By Default" icon="shield">
          Brewex only installs what must on your production server. Includes SSH authentication and firewall out of the box.
          Security updates are installed automatically.
          </FeatureBox>
          <FeatureBox title="Environment Variables" icon="globe">
          Set and update your application environment variables in Brewex web interface.
          </FeatureBox>
        </div>
        <div class="mx-auto container px-4 py-16 flex flex-col items-center border-t">
          <p class="text-2xl sm:ml-0 ml-5 font-bold text-light-blue-200">Deploy your app in minutes.</p>
          <div
            class="ml-form-embed max-w-xl w-full md:max-w-xl lg:max-w-3xl xl:max-w-4xl shadow-lg rounded-lg"
            data-account="1846666:o8e0h2w0e7"
            data-form="1731876:h1l8e4">
          </div>
        </div>
      </section>
      <footer class="bg-cool-grey-900 text-cool-grey-300">
        <div class="mx-auto container px-4 py-10">
        Copyright © 2020 Brewex.io
        </div>
      </footer>
    </main>

    """
  end
end
